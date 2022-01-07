
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_6__ {int mtx; } ;
typedef TYPE_1__ eset_t ;
typedef int arena_t ;


 size_t PAGE ;
 void* PAGE_ADDR2BASE (void*) ;
 int WITNESS_RANK_CORE ;
 scalar_t__ arena_ind_get (int *) ;
 int assert (int) ;
 scalar_t__ config_debug ;
 int * eset_fit_locked (int *,TYPE_1__*,size_t,size_t) ;
 scalar_t__ eset_state_get (TYPE_1__*) ;
 int extent_activate_locked (int *,int *,TYPE_1__*,int *) ;
 scalar_t__ extent_arena_ind_get (int *) ;
 void* extent_base_get (int *) ;
 int extent_hooks_assure_initialized (int *,int **) ;
 int * extent_lock_from_addr (int *,int *,void*,int) ;
 size_t extent_size_get (int *) ;
 scalar_t__ extent_state_get (int *) ;
 int extent_unlock (int *,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int) ;

__attribute__((used)) static extent_t *
extent_recycle_extract(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx, eset_t *eset,
    void *new_addr, size_t size, size_t pad, size_t alignment, bool slab,
    bool growing_retained) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, growing_retained ? 1 : 0);
 assert(alignment > 0);
 if (config_debug && new_addr != ((void*)0)) {
  assert(PAGE_ADDR2BASE(new_addr) == new_addr);
  assert(pad == 0);
  assert(alignment <= PAGE);
 }

 size_t esize = size + pad;
 malloc_mutex_lock(tsdn, &eset->mtx);
 extent_hooks_assure_initialized(arena, r_extent_hooks);
 extent_t *extent;
 if (new_addr != ((void*)0)) {
  extent = extent_lock_from_addr(tsdn, rtree_ctx, new_addr,
      0);
  if (extent != ((void*)0)) {




   extent_t *unlock_extent = extent;
   assert(extent_base_get(extent) == new_addr);
   if (extent_arena_ind_get(extent)
       != arena_ind_get(arena) ||
       extent_size_get(extent) < esize ||
       extent_state_get(extent) !=
       eset_state_get(eset)) {
    extent = ((void*)0);
   }
   extent_unlock(tsdn, unlock_extent);
  }
 } else {
  extent = eset_fit_locked(tsdn, eset, esize, alignment);
 }
 if (extent == ((void*)0)) {
  malloc_mutex_unlock(tsdn, &eset->mtx);
  return ((void*)0);
 }

 extent_activate_locked(tsdn, arena, eset, extent);
 malloc_mutex_unlock(tsdn, &eset->mtx);

 return extent;
}
