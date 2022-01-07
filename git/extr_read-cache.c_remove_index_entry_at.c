
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; int cache_changed; } ;
struct cache_entry {int dummy; } ;


 int CE_ENTRY_REMOVED ;
 int MOVE_ARRAY (struct cache_entry**,struct cache_entry**,int) ;
 int record_resolve_undo (struct index_state*,struct cache_entry*) ;
 int remove_name_hash (struct index_state*,struct cache_entry*) ;
 int save_or_free_index_entry (struct index_state*,struct cache_entry*) ;

int remove_index_entry_at(struct index_state *istate, int pos)
{
 struct cache_entry *ce = istate->cache[pos];

 record_resolve_undo(istate, ce);
 remove_name_hash(istate, ce);
 save_or_free_index_entry(istate, ce);
 istate->cache_changed |= CE_ENTRY_REMOVED;
 istate->cache_nr--;
 if (pos >= istate->cache_nr)
  return 0;
 MOVE_ARRAY(istate->cache + pos, istate->cache + pos + 1,
     istate->cache_nr - pos);
 return 1;
}
