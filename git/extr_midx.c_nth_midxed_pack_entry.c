
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct repository {int dummy; } ;
struct packed_git {scalar_t__ num_bad_objects; scalar_t__ bad_object_sha1; } ;
struct pack_entry {struct packed_git* p; int offset; } ;
struct object_id {int hash; } ;
struct multi_pack_index {scalar_t__ num_objects; struct packed_git** packs; } ;
struct TYPE_2__ {scalar_t__ rawsz; } ;


 int _ (char*) ;
 int die (int ) ;
 scalar_t__ hasheq (int ,scalar_t__) ;
 int is_pack_valid (struct packed_git*) ;
 int nth_midxed_object_oid (struct object_id*,struct multi_pack_index*,scalar_t__) ;
 int nth_midxed_offset (struct multi_pack_index*,scalar_t__) ;
 scalar_t__ nth_midxed_pack_int_id (struct multi_pack_index*,scalar_t__) ;
 scalar_t__ prepare_midx_pack (struct repository*,struct multi_pack_index*,scalar_t__) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int nth_midxed_pack_entry(struct repository *r,
     struct multi_pack_index *m,
     struct pack_entry *e,
     uint32_t pos)
{
 uint32_t pack_int_id;
 struct packed_git *p;

 if (pos >= m->num_objects)
  return 0;

 pack_int_id = nth_midxed_pack_int_id(m, pos);

 if (prepare_midx_pack(r, m, pack_int_id))
  die(_("error preparing packfile from multi-pack-index"));
 p = m->packs[pack_int_id];
 if (!is_pack_valid(p))
  return 0;

 if (p->num_bad_objects) {
  uint32_t i;
  struct object_id oid;
  nth_midxed_object_oid(&oid, m, pos);
  for (i = 0; i < p->num_bad_objects; i++)
   if (hasheq(oid.hash,
       p->bad_object_sha1 + the_hash_algo->rawsz * i))
    return 0;
 }

 e->offset = nth_midxed_offset(m, pos);
 e->p = p;

 return 1;
}
