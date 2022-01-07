
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t pszind_t ;
typedef int extent_t ;
struct TYPE_3__ {int * heaps; int bitmap; } ;
typedef TYPE_1__ eset_t ;


 uintptr_t ALIGNMENT_CEILING (uintptr_t,int ) ;
 int PAGE_CEILING (size_t) ;
 size_t SC_NPSIZES ;
 int assert (int) ;
 scalar_t__ bitmap_ffu (int ,int *,size_t) ;
 int eset_bitmap_info ;
 scalar_t__ extent_base_get (int *) ;
 int extent_heap_empty (int *) ;
 int * extent_heap_first (int *) ;
 size_t extent_size_get (int *) ;
 size_t sz_psz2ind (int ) ;
 int sz_psz_quantize_ceil (size_t) ;

__attribute__((used)) static extent_t *
eset_fit_alignment(eset_t *eset, size_t min_size, size_t max_size,
    size_t alignment) {
        pszind_t pind = sz_psz2ind(sz_psz_quantize_ceil(min_size));
        pszind_t pind_max = sz_psz2ind(sz_psz_quantize_ceil(max_size));

 for (pszind_t i = (pszind_t)bitmap_ffu(eset->bitmap,
     &eset_bitmap_info, (size_t)pind); i < pind_max; i =
     (pszind_t)bitmap_ffu(eset->bitmap, &eset_bitmap_info,
     (size_t)i+1)) {
  assert(i < SC_NPSIZES);
  assert(!extent_heap_empty(&eset->heaps[i]));
  extent_t *extent = extent_heap_first(&eset->heaps[i]);
  uintptr_t base = (uintptr_t)extent_base_get(extent);
  size_t candidate_size = extent_size_get(extent);
  assert(candidate_size >= min_size);

  uintptr_t next_align = ALIGNMENT_CEILING((uintptr_t)base,
      PAGE_CEILING(alignment));
  if (base > next_align || base + candidate_size <= next_align) {

   continue;
  }

  size_t leadsize = next_align - base;
  if (candidate_size - leadsize >= min_size) {
   return extent;
  }
 }

 return ((void*)0);
}
