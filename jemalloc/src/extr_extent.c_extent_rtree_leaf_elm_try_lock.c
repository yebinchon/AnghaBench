
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_leaf_elm_t ;
typedef int lock_result_t ;
typedef int extent_t ;


 int extent_lock (int *,int *) ;
 int extent_unlock (int *,int *) ;
 int extents_rtree ;
 int lock_result_failure ;
 int lock_result_no_extent ;
 int lock_result_success ;
 int * rtree_leaf_elm_extent_read (int *,int *,int *,int) ;
 scalar_t__ rtree_leaf_elm_slab_read (int *,int *,int *,int) ;

__attribute__((used)) static lock_result_t
extent_rtree_leaf_elm_try_lock(tsdn_t *tsdn, rtree_leaf_elm_t *elm,
    extent_t **result, bool inactive_only) {
 extent_t *extent1 = rtree_leaf_elm_extent_read(tsdn, &extents_rtree,
     elm, 1);


 if (extent1 == ((void*)0) || (inactive_only && rtree_leaf_elm_slab_read(tsdn,
     &extents_rtree, elm, 1))) {
  return lock_result_no_extent;
 }





 extent_lock(tsdn, extent1);
 extent_t *extent2 = rtree_leaf_elm_extent_read(tsdn,
     &extents_rtree, elm, 1);

 if (extent1 == extent2) {
  *result = extent1;
  return lock_result_success;
 } else {
  extent_unlock(tsdn, extent1);
  return lock_result_failure;
 }
}
