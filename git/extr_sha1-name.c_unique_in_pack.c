
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct packed_git {scalar_t__ num_objects; scalar_t__ multi_pack_index; } ;
struct object_id {int hash; } ;
struct TYPE_2__ {int hash; } ;
struct disambiguate_state {TYPE_1__ bin_pfx; int len; int ambiguous; } ;


 int bsearch_pack (TYPE_1__*,struct packed_git*,scalar_t__*) ;
 int match_sha (int ,int ,int ) ;
 struct object_id* nth_packed_object_oid (struct object_id*,struct packed_git*,scalar_t__) ;
 scalar_t__ open_pack_index (struct packed_git*) ;
 int update_candidates (struct disambiguate_state*,struct object_id const*) ;

__attribute__((used)) static void unique_in_pack(struct packed_git *p,
      struct disambiguate_state *ds)
{
 uint32_t num, i, first = 0;
 const struct object_id *current = ((void*)0);

 if (p->multi_pack_index)
  return;

 if (open_pack_index(p) || !p->num_objects)
  return;

 num = p->num_objects;
 bsearch_pack(&ds->bin_pfx, p, &first);






 for (i = first; i < num && !ds->ambiguous; i++) {
  struct object_id oid;
  current = nth_packed_object_oid(&oid, p, i);
  if (!match_sha(ds->len, ds->bin_pfx.hash, current->hash))
   break;
  update_candidates(ds, current);
 }
}
