
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packed_git {unsigned int num_bad_objects; scalar_t__ bad_object_sha1; } ;
struct pack_entry {struct packed_git* p; scalar_t__ offset; } ;
struct object_id {int hash; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {unsigned int rawsz; } ;


 scalar_t__ find_pack_entry_one (int ,struct packed_git*) ;
 scalar_t__ hasheq (int ,scalar_t__) ;
 int is_pack_valid (struct packed_git*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int fill_pack_entry(const struct object_id *oid,
      struct pack_entry *e,
      struct packed_git *p)
{
 off_t offset;

 if (p->num_bad_objects) {
  unsigned i;
  for (i = 0; i < p->num_bad_objects; i++)
   if (hasheq(oid->hash,
       p->bad_object_sha1 + the_hash_algo->rawsz * i))
    return 0;
 }

 offset = find_pack_entry_one(oid->hash, p);
 if (!offset)
  return 0;
 if (!is_pack_valid(p))
  return 0;
 e->offset = offset;
 e->p = p;
 return 1;
}
