
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;


 int LG_PAGE ;
 int assert (int ) ;
 scalar_t__ extent_base_get (int *) ;
 int extent_size_get (int *) ;
 int extent_slab_get (int *) ;
 int extents_rtree ;
 int rtree_clear (int *,int *,int *,uintptr_t) ;

__attribute__((used)) static void
extent_interior_deregister(tsdn_t *tsdn, rtree_ctx_t *rtree_ctx,
    extent_t *extent) {
 size_t i;

 assert(extent_slab_get(extent));

 for (i = 1; i < (extent_size_get(extent) >> LG_PAGE) - 1; i++) {
  rtree_clear(tsdn, &extents_rtree, rtree_ctx,
      (uintptr_t)extent_base_get(extent) + (uintptr_t)(i <<
      LG_PAGE));
 }
}
