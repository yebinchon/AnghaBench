
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
typedef int extent_split_interior_result_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 uintptr_t ALIGNMENT_CEILING (uintptr_t,int ) ;
 size_t PAGE ;
 int PAGE_CEILING (size_t) ;
 int SC_NSIZES ;
 int assert (int) ;
 scalar_t__ extent_addr_get (int *) ;
 scalar_t__ extent_base_get (int *) ;
 scalar_t__ extent_past_get (int *) ;
 size_t extent_size_get (int *) ;
 int * extent_split_impl (int *,int *,int **,int *,size_t,int ,int,size_t,int ,int,int) ;
 int extent_split_interior_cant_alloc ;
 int extent_split_interior_error ;
 int extent_split_interior_ok ;
 int extent_szind_set (int *,int ) ;
 int extents_rtree ;
 int rtree_szind_slab_update (int *,int *,int *,uintptr_t,int ,int) ;

__attribute__((used)) static extent_split_interior_result_t
extent_split_interior(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx,

    extent_t **extent, extent_t **lead, extent_t **trail,

    extent_t **to_leak, extent_t **to_salvage,
    void *new_addr, size_t size, size_t pad, size_t alignment, bool slab,
    szind_t szind, bool growing_retained) {
 size_t esize = size + pad;
 size_t leadsize = ALIGNMENT_CEILING((uintptr_t)extent_base_get(*extent),
     PAGE_CEILING(alignment)) - (uintptr_t)extent_base_get(*extent);
 assert(new_addr == ((void*)0) || leadsize == 0);
 if (extent_size_get(*extent) < leadsize + esize) {
  return extent_split_interior_cant_alloc;
 }
 size_t trailsize = extent_size_get(*extent) - leadsize - esize;

 *lead = ((void*)0);
 *trail = ((void*)0);
 *to_leak = ((void*)0);
 *to_salvage = ((void*)0);


 if (leadsize != 0) {
  *lead = *extent;
  *extent = extent_split_impl(tsdn, arena, r_extent_hooks,
      *lead, leadsize, SC_NSIZES, 0, esize + trailsize, szind,
      slab, growing_retained);
  if (*extent == ((void*)0)) {
   *to_leak = *lead;
   *lead = ((void*)0);
   return extent_split_interior_error;
  }
 }


 if (trailsize != 0) {
  *trail = extent_split_impl(tsdn, arena, r_extent_hooks, *extent,
      esize, szind, slab, trailsize, SC_NSIZES, 0,
      growing_retained);
  if (*trail == ((void*)0)) {
   *to_leak = *extent;
   *to_salvage = *lead;
   *lead = ((void*)0);
   *extent = ((void*)0);
   return extent_split_interior_error;
  }
 }

 if (leadsize == 0 && trailsize == 0) {




  extent_szind_set(*extent, szind);
  if (szind != SC_NSIZES) {
   rtree_szind_slab_update(tsdn, &extents_rtree, rtree_ctx,
       (uintptr_t)extent_addr_get(*extent), szind, slab);
   if (slab && extent_size_get(*extent) > PAGE) {
    rtree_szind_slab_update(tsdn, &extents_rtree,
        rtree_ctx,
        (uintptr_t)extent_past_get(*extent) -
        (uintptr_t)PAGE, szind, slab);
   }
  }
 }

 return extent_split_interior_ok;
}
