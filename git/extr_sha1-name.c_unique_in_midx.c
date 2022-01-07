
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct object_id {int hash; } ;
struct multi_pack_index {scalar_t__ num_objects; } ;
struct TYPE_2__ {int hash; } ;
struct disambiguate_state {TYPE_1__ bin_pfx; int len; int ambiguous; } ;


 int bsearch_midx (TYPE_1__*,struct multi_pack_index*,scalar_t__*) ;
 int match_sha (int ,int ,int ) ;
 struct object_id* nth_midxed_object_oid (struct object_id*,struct multi_pack_index*,scalar_t__) ;
 int update_candidates (struct disambiguate_state*,struct object_id const*) ;

__attribute__((used)) static void unique_in_midx(struct multi_pack_index *m,
      struct disambiguate_state *ds)
{
 uint32_t num, i, first = 0;
 const struct object_id *current = ((void*)0);
 num = m->num_objects;

 if (!num)
  return;

 bsearch_midx(&ds->bin_pfx, m, &first);






 for (i = first; i < num && !ds->ambiguous; i++) {
  struct object_id oid;
  current = nth_midxed_object_oid(&oid, m, i);
  if (!match_sha(ds->len, ds->bin_pfx.hash, current->hash))
   break;
  update_candidates(ds, current);
 }
}
