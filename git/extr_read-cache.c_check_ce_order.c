
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {unsigned int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;


 int _ (char*) ;
 scalar_t__ ce_stage (struct cache_entry*) ;
 int die (int ,...) ;
 int strcmp (int ,int ) ;
 int verify_ce_order ;

__attribute__((used)) static void check_ce_order(struct index_state *istate)
{
 unsigned int i;

 if (!verify_ce_order)
  return;

 for (i = 1; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i - 1];
  struct cache_entry *next_ce = istate->cache[i];
  int name_compare = strcmp(ce->name, next_ce->name);

  if (0 < name_compare)
   die(_("unordered stage entries in index"));
  if (!name_compare) {
   if (!ce_stage(ce))
    die(_("multiple stage entries for merged file '%s'"),
        ce->name);
   if (ce_stage(ce) > ce_stage(next_ce))
    die(_("unordered stage entries for '%s'"),
        ce->name);
  }
 }
}
