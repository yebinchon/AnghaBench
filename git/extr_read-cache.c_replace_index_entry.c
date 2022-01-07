
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; } ;


 int CE_ENTRY_CHANGED ;
 int CE_HASHED ;
 int CE_UPDATE_IN_BASE ;
 int discard_cache_entry (struct cache_entry*) ;
 int mark_fsmonitor_invalid (struct index_state*,struct cache_entry*) ;
 int remove_name_hash (struct index_state*,struct cache_entry*) ;
 int replace_index_entry_in_base (struct index_state*,struct cache_entry*,struct cache_entry*) ;
 int set_index_entry (struct index_state*,int,struct cache_entry*) ;

__attribute__((used)) static void replace_index_entry(struct index_state *istate, int nr, struct cache_entry *ce)
{
 struct cache_entry *old = istate->cache[nr];

 replace_index_entry_in_base(istate, old, ce);
 remove_name_hash(istate, old);
 discard_cache_entry(old);
 ce->ce_flags &= ~CE_HASHED;
 set_index_entry(istate, nr, ce);
 ce->ce_flags |= CE_UPDATE_IN_BASE;
 mark_fsmonitor_invalid(istate, ce);
 istate->cache_changed |= CE_ENTRY_CHANGED;
}
