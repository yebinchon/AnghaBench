
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int name_hash_initialized; int cache_nr; int * cache; int dir_hash; int name_hash; } ;


 int cache_entry_cmp ;
 int dir_entry_cmp ;
 int hash_index_entry (struct index_state*,int ) ;
 int hashmap_disable_item_counting (int *) ;
 int hashmap_enable_item_counting (int *) ;
 int hashmap_init (int *,int ,int *,int) ;
 scalar_t__ lookup_lazy_params (struct index_state*) ;
 int threaded_lazy_init_name_hash (struct index_state*) ;
 int trace_performance_enter () ;
 int trace_performance_leave (char*) ;

__attribute__((used)) static void lazy_init_name_hash(struct index_state *istate)
{

 if (istate->name_hash_initialized)
  return;
 trace_performance_enter();
 hashmap_init(&istate->name_hash, cache_entry_cmp, ((void*)0), istate->cache_nr);
 hashmap_init(&istate->dir_hash, dir_entry_cmp, ((void*)0), istate->cache_nr);

 if (lookup_lazy_params(istate)) {






  hashmap_disable_item_counting(&istate->dir_hash);
  threaded_lazy_init_name_hash(istate);
  hashmap_enable_item_counting(&istate->dir_hash);
 } else {
  int nr;
  for (nr = 0; nr < istate->cache_nr; nr++)
   hash_index_entry(istate, istate->cache[nr]);
 }

 istate->name_hash_initialized = 1;
 trace_performance_leave("initialize name hash");
}
