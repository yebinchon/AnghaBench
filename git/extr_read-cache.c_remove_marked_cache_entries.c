
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {unsigned int cache_nr; int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int name; } ;


 int CE_ENTRY_REMOVED ;
 int CE_REMOVE ;
 int cache_tree_invalidate_path (struct index_state*,int ) ;
 int remove_name_hash (struct index_state*,struct cache_entry*) ;
 int save_or_free_index_entry (struct index_state*,struct cache_entry*) ;
 int untracked_cache_remove_from_index (struct index_state*,int ) ;

void remove_marked_cache_entries(struct index_state *istate, int invalidate)
{
 struct cache_entry **ce_array = istate->cache;
 unsigned int i, j;

 for (i = j = 0; i < istate->cache_nr; i++) {
  if (ce_array[i]->ce_flags & CE_REMOVE) {
   if (invalidate) {
    cache_tree_invalidate_path(istate,
          ce_array[i]->name);
    untracked_cache_remove_from_index(istate,
          ce_array[i]->name);
   }
   remove_name_hash(istate, ce_array[i]);
   save_or_free_index_entry(istate, ce_array[i]);
  }
  else
   ce_array[j++] = ce_array[i];
 }
 if (j == istate->cache_nr)
  return;
 istate->cache_changed |= CE_ENTRY_REMOVED;
 istate->cache_nr = j;
}
