
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t pszind_t ;
typedef int extent_t ;
struct TYPE_3__ {scalar_t__ delay_coalesce; int * heaps; int bitmap; } ;
typedef TYPE_1__ eset_t ;


 int SC_NPSIZES ;
 int assert (int) ;
 scalar_t__ bitmap_ffu (int ,int *,size_t) ;
 int eset_bitmap_info ;
 scalar_t__ extent_heap_empty (int *) ;
 int * extent_heap_first (int *) ;
 size_t extent_size_get (int *) ;
 scalar_t__ extent_snad_comp (int *,int *) ;
 int maps_coalesce ;
 size_t opt_lg_extent_max_active_fit ;
 int opt_retain ;
 size_t sz_pind2sz (size_t) ;
 size_t sz_psz2ind (int ) ;
 int sz_psz_quantize_ceil (size_t) ;

__attribute__((used)) static extent_t *
eset_first_fit_locked(tsdn_t *tsdn, eset_t *eset, size_t size) {
 extent_t *ret = ((void*)0);

 pszind_t pind = sz_psz2ind(sz_psz_quantize_ceil(size));

 if (!maps_coalesce && !opt_retain) {




  return extent_heap_empty(&eset->heaps[pind]) ? ((void*)0) :
      extent_heap_first(&eset->heaps[pind]);
 }

 for (pszind_t i = (pszind_t)bitmap_ffu(eset->bitmap,
     &eset_bitmap_info, (size_t)pind);
     i < SC_NPSIZES + 1;
     i = (pszind_t)bitmap_ffu(eset->bitmap, &eset_bitmap_info,
     (size_t)i+1)) {
  assert(!extent_heap_empty(&eset->heaps[i]));
  extent_t *extent = extent_heap_first(&eset->heaps[i]);
  assert(extent_size_get(extent) >= size);






  if (eset->delay_coalesce &&
      (sz_pind2sz(i) >> opt_lg_extent_max_active_fit) > size) {
   break;
  }
  if (ret == ((void*)0) || extent_snad_comp(extent, ret) < 0) {
   ret = extent;
  }
  if (i == SC_NPSIZES) {
   break;
  }
  assert(i < SC_NPSIZES);
 }

 return ret;
}
