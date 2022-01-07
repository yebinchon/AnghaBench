
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list_item {struct stage_data* util; } ;
struct string_list {int strdup_strings; } ;
struct stage_data {TYPE_1__* stages; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int oid; int ce_mode; int name; } ;
struct TYPE_2__ {int oid; int mode; } ;


 size_t ce_stage (struct cache_entry const*) ;
 int oidcpy (int *,int *) ;
 struct string_list_item* string_list_insert (struct string_list*,int ) ;
 struct string_list_item* string_list_lookup (struct string_list*,int ) ;
 void* xcalloc (int,int) ;

__attribute__((used)) static struct string_list *get_unmerged(struct index_state *istate)
{
 struct string_list *unmerged = xcalloc(1, sizeof(struct string_list));
 int i;

 unmerged->strdup_strings = 1;

 for (i = 0; i < istate->cache_nr; i++) {
  struct string_list_item *item;
  struct stage_data *e;
  const struct cache_entry *ce = istate->cache[i];
  if (!ce_stage(ce))
   continue;

  item = string_list_lookup(unmerged, ce->name);
  if (!item) {
   item = string_list_insert(unmerged, ce->name);
   item->util = xcalloc(1, sizeof(struct stage_data));
  }
  e = item->util;
  e->stages[ce_stage(ce)].mode = ce->ce_mode;
  oidcpy(&e->stages[ce_stage(ce)].oid, &ce->oid);
 }

 return unmerged;
}
