
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nsec; scalar_t__ sec; } ;
struct index_state {int * ce_mem_pool; int * untracked; scalar_t__ cache_alloc; int cache; scalar_t__ fsmonitor_has_run_once; scalar_t__ initialized; int cache_tree; TYPE_1__ timestamp; scalar_t__ cache_changed; scalar_t__ cache_nr; } ;


 int FREE_AND_NULL (int ) ;
 int cache_tree_free (int *) ;
 int discard_split_index (struct index_state*) ;
 int free_name_hash (struct index_state*) ;
 int free_untracked_cache (int *) ;
 int mem_pool_discard (int *,int ) ;
 int resolve_undo_clear_index (struct index_state*) ;
 int should_validate_cache_entries () ;
 int validate_cache_entries (struct index_state*) ;

int discard_index(struct index_state *istate)
{







 validate_cache_entries(istate);

 resolve_undo_clear_index(istate);
 istate->cache_nr = 0;
 istate->cache_changed = 0;
 istate->timestamp.sec = 0;
 istate->timestamp.nsec = 0;
 free_name_hash(istate);
 cache_tree_free(&(istate->cache_tree));
 istate->initialized = 0;
 istate->fsmonitor_has_run_once = 0;
 FREE_AND_NULL(istate->cache);
 istate->cache_alloc = 0;
 discard_split_index(istate);
 free_untracked_cache(istate->untracked);
 istate->untracked = ((void*)0);

 if (istate->ce_mem_pool) {
  mem_pool_discard(istate->ce_mem_pool, should_validate_cache_entries());
  istate->ce_mem_pool = ((void*)0);
 }

 return 0;
}
