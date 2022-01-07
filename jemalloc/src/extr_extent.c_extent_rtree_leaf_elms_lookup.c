
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_leaf_elm_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;


 int assert (int ) ;
 scalar_t__ extent_base_get (int const*) ;
 scalar_t__ extent_last_get (int const*) ;
 int extents_rtree ;
 int * rtree_leaf_elm_lookup (int *,int *,int *,uintptr_t,int,int) ;

__attribute__((used)) static bool
extent_rtree_leaf_elms_lookup(tsdn_t *tsdn, rtree_ctx_t *rtree_ctx,
    const extent_t *extent, bool dependent, bool init_missing,
    rtree_leaf_elm_t **r_elm_a, rtree_leaf_elm_t **r_elm_b) {
 *r_elm_a = rtree_leaf_elm_lookup(tsdn, &extents_rtree, rtree_ctx,
     (uintptr_t)extent_base_get(extent), dependent, init_missing);
 if (!dependent && *r_elm_a == ((void*)0)) {
  return 1;
 }
 assert(*r_elm_a != ((void*)0));

 *r_elm_b = rtree_leaf_elm_lookup(tsdn, &extents_rtree, rtree_ctx,
     (uintptr_t)extent_last_get(extent), dependent, init_missing);
 if (!dependent && *r_elm_b == ((void*)0)) {
  return 1;
 }
 assert(*r_elm_b != ((void*)0));

 return 0;
}
