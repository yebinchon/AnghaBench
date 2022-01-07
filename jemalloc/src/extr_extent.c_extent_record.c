
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_14__ {int mtx; int delay_coalesce; } ;
typedef TYPE_1__ eset_t ;
struct TYPE_15__ {TYPE_1__ eset_dirty; } ;
typedef TYPE_2__ arena_t ;


 scalar_t__ SC_LARGE_MINCLASS ;
 int SC_NSIZES ;
 int arena_decay_extent (int *,TYPE_2__*,int **,int *) ;
 int assert (int) ;
 scalar_t__ eset_state_get (TYPE_1__*) ;
 scalar_t__ extent_base_get (int *) ;
 int extent_deactivate_locked (int *,TYPE_2__*,TYPE_1__*,int *) ;
 int extent_hooks_assure_initialized (TYPE_2__*,int **) ;
 int extent_interior_deregister (int *,int *,int *) ;
 scalar_t__ extent_size_get (int *) ;
 scalar_t__ extent_slab_get (int *) ;
 int extent_slab_set (int *,int) ;
 scalar_t__ extent_state_active ;
 scalar_t__ extent_state_dirty ;
 scalar_t__ extent_state_get (int *) ;
 scalar_t__ extent_state_muzzy ;
 int extent_szind_set (int *,int ) ;
 int * extent_try_coalesce (int *,TYPE_2__*,int **,int *,TYPE_1__*,int *,int *,int) ;
 int * extent_try_coalesce_large (int *,TYPE_2__*,int **,int *,TYPE_1__*,int *,int*,int) ;
 int extent_zeroed_get (int *) ;
 int extents_rtree ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 scalar_t__ oversize_threshold ;
 int * rtree_extent_read (int *,int *,int *,uintptr_t,int) ;
 int * tsdn_rtree_ctx (int *,int *) ;

__attribute__((used)) static void
extent_record(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, extent_t *extent, bool growing_retained) {
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);

 assert((eset_state_get(eset) != extent_state_dirty &&
     eset_state_get(eset) != extent_state_muzzy) ||
     !extent_zeroed_get(extent));

 malloc_mutex_lock(tsdn, &eset->mtx);
 extent_hooks_assure_initialized(arena, r_extent_hooks);

 extent_szind_set(extent, SC_NSIZES);
 if (extent_slab_get(extent)) {
  extent_interior_deregister(tsdn, rtree_ctx, extent);
  extent_slab_set(extent, 0);
 }

 assert(rtree_extent_read(tsdn, &extents_rtree, rtree_ctx,
     (uintptr_t)extent_base_get(extent), 1) == extent);

 if (!eset->delay_coalesce) {
  extent = extent_try_coalesce(tsdn, arena, r_extent_hooks,
      rtree_ctx, eset, extent, ((void*)0), growing_retained);
 } else if (extent_size_get(extent) >= SC_LARGE_MINCLASS) {
  assert(eset == &arena->eset_dirty);

  bool coalesced;
  do {
   assert(extent_state_get(extent) == extent_state_active);
   extent = extent_try_coalesce_large(tsdn, arena,
       r_extent_hooks, rtree_ctx, eset, extent,
       &coalesced, growing_retained);
  } while (coalesced);
  if (extent_size_get(extent) >= oversize_threshold) {

   malloc_mutex_unlock(tsdn, &eset->mtx);
   arena_decay_extent(tsdn, arena, r_extent_hooks, extent);
   return;
  }
 }
 extent_deactivate_locked(tsdn, arena, eset, extent);

 malloc_mutex_unlock(tsdn, &eset->mtx);
}
