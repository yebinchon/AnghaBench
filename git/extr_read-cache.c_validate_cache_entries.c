
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int cache_nr; TYPE_1__* split_index; int * cache; int ce_mem_pool; int initialized; } ;
struct TYPE_2__ {struct index_state* base; } ;


 int BUG (char*) ;
 int mem_pool_contains (int ,int ) ;
 int should_validate_cache_entries () ;

void validate_cache_entries(const struct index_state *istate)
{
 int i;

 if (!should_validate_cache_entries() ||!istate || !istate->initialized)
  return;

 for (i = 0; i < istate->cache_nr; i++) {
  if (!istate) {
   BUG("cache entry is not allocated from expected memory pool");
  } else if (!istate->ce_mem_pool ||
   !mem_pool_contains(istate->ce_mem_pool, istate->cache[i])) {
   if (!istate->split_index ||
    !istate->split_index->base ||
    !istate->split_index->base->ce_mem_pool ||
    !mem_pool_contains(istate->split_index->base->ce_mem_pool, istate->cache[i])) {
    BUG("cache entry is not allocated from expected memory pool");
   }
  }
 }

 if (istate->split_index)
  validate_cache_entries(istate->split_index->base);
}
