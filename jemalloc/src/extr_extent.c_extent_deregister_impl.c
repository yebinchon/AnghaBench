
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_leaf_elm_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;


 int SC_NSIZES ;
 scalar_t__ config_prof ;
 int extent_gdump_sub (int *,int *) ;
 int extent_interior_deregister (int *,int *,int *) ;
 int extent_lock (int *,int *) ;
 int extent_rtree_leaf_elms_lookup (int *,int *,int *,int,int,int **,int **) ;
 int extent_rtree_write_acquired (int *,int *,int *,int *,int ,int) ;
 scalar_t__ extent_slab_get (int *) ;
 int extent_slab_set (int *,int) ;
 int extent_unlock (int *,int *) ;
 int * tsdn_rtree_ctx (int *,int *) ;

__attribute__((used)) static void
extent_deregister_impl(tsdn_t *tsdn, extent_t *extent, bool gdump) {
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);
 rtree_leaf_elm_t *elm_a, *elm_b;
 extent_rtree_leaf_elms_lookup(tsdn, rtree_ctx, extent, 1, 0,
     &elm_a, &elm_b);

 extent_lock(tsdn, extent);

 extent_rtree_write_acquired(tsdn, elm_a, elm_b, ((void*)0), SC_NSIZES, 0);
 if (extent_slab_get(extent)) {
  extent_interior_deregister(tsdn, rtree_ctx, extent);
  extent_slab_set(extent, 0);
 }

 extent_unlock(tsdn, extent);

 if (config_prof && gdump) {
  extent_gdump_sub(tsdn, extent);
 }
}
