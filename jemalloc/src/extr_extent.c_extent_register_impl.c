
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_leaf_elm_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;


 scalar_t__ config_prof ;
 int extent_gdump_add (int *,int *) ;
 int extent_interior_register (int *,int *,int *,int ) ;
 int extent_lock (int *,int *) ;
 scalar_t__ extent_rtree_leaf_elms_lookup (int *,int *,int *,int,int,int **,int **) ;
 int extent_rtree_write_acquired (int *,int *,int *,int *,int ,int) ;
 int extent_slab_get (int *) ;
 int extent_szind_get_maybe_invalid (int *) ;
 int extent_unlock (int *,int *) ;
 int * tsdn_rtree_ctx (int *,int *) ;

__attribute__((used)) static bool
extent_register_impl(tsdn_t *tsdn, extent_t *extent, bool gdump_add) {
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);
 rtree_leaf_elm_t *elm_a, *elm_b;





 extent_lock(tsdn, extent);

 if (extent_rtree_leaf_elms_lookup(tsdn, rtree_ctx, extent, 0, 1,
     &elm_a, &elm_b)) {
  extent_unlock(tsdn, extent);
  return 1;
 }

 szind_t szind = extent_szind_get_maybe_invalid(extent);
 bool slab = extent_slab_get(extent);
 extent_rtree_write_acquired(tsdn, elm_a, elm_b, extent, szind, slab);
 if (slab) {
  extent_interior_register(tsdn, rtree_ctx, extent, szind);
 }

 extent_unlock(tsdn, extent);

 if (config_prof && gdump_add) {
  extent_gdump_add(tsdn, extent);
 }

 return 0;
}
