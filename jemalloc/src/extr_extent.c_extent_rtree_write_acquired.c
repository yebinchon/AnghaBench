
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_leaf_elm_t ;
typedef int extent_t ;


 int extents_rtree ;
 int rtree_leaf_elm_write (int *,int *,int *,int *,int ,int) ;

__attribute__((used)) static void
extent_rtree_write_acquired(tsdn_t *tsdn, rtree_leaf_elm_t *elm_a,
    rtree_leaf_elm_t *elm_b, extent_t *extent, szind_t szind, bool slab) {
 rtree_leaf_elm_write(tsdn, &extents_rtree, elm_a, extent, szind, slab);
 if (elm_b != ((void*)0)) {
  rtree_leaf_elm_write(tsdn, &extents_rtree, elm_b, extent, szind,
      slab);
 }
}
