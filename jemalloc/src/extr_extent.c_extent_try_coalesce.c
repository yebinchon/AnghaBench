
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


 int * extent_try_coalesce_impl (int *,int *,int **,int *,int *,int *,int*,int,int) ;

__attribute__((used)) static extent_t *
extent_try_coalesce(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx, eset_t *eset,
    extent_t *extent, bool *coalesced, bool growing_retained) {
 return extent_try_coalesce_impl(tsdn, arena, r_extent_hooks, rtree_ctx,
     eset, extent, coalesced, growing_retained, 0);
}
