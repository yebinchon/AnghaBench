
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef size_t szind_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
typedef int cache_bin_t ;


 int abort () ;
 void** cache_bin_bottom_item_get (int *,size_t) ;
 int extents_rtree ;
 int rtree_extent_szind_read (int *,int *,int *,uintptr_t,int,int **,size_t*) ;
 int safety_check_fail (char*) ;
 int * tsdn_rtree_ctx (int *,int *) ;

__attribute__((used)) static void
tbin_extents_lookup_size_check(tsdn_t *tsdn, cache_bin_t *tbin, szind_t binind,
    size_t nflush, extent_t **extents){
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);







 szind_t szind;
 size_t sz_sum = binind * nflush;
 void **bottom_item = cache_bin_bottom_item_get(tbin, binind);
 for (unsigned i = 0 ; i < nflush; i++) {
  rtree_extent_szind_read(tsdn, &extents_rtree,
      rtree_ctx, (uintptr_t)*(bottom_item - i), 1,
      &extents[i], &szind);
  sz_sum -= szind;
 }
 if (sz_sum != 0) {
  safety_check_fail("<jemalloc>: size mismatch in thread cache "
      "detected, likely caused by sized deallocation bugs by "
      "application. Abort.\n");
  abort();
 }
}
