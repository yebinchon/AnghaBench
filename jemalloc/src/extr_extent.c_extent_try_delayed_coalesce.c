
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int eset_t ;
typedef int arena_t ;


 int eset_insert_locked (int *,int *,int *) ;
 int eset_state_get (int *) ;
 int extent_state_active ;
 int extent_state_set (int *,int ) ;
 int * extent_try_coalesce (int *,int *,int **,int *,int *,int *,int*,int) ;

__attribute__((used)) static bool
extent_try_delayed_coalesce(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx, eset_t *eset,
    extent_t *extent) {
 extent_state_set(extent, extent_state_active);
 bool coalesced;
 extent = extent_try_coalesce(tsdn, arena, r_extent_hooks, rtree_ctx,
     eset, extent, &coalesced, 0);
 extent_state_set(extent, eset_state_get(eset));

 if (!coalesced) {
  return 1;
 }
 eset_insert_locked(tsdn, eset, extent);
 return 0;
}
