
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_t ;


 uintptr_t ALIGNMENT_CEILING (uintptr_t,size_t) ;
 size_t QUANTUM ;
 int assert (int) ;
 scalar_t__ extent_addr_get (int *) ;
 int extent_binit (int *,void*,size_t,int ) ;
 size_t extent_bsize_get (int *) ;
 int extent_sn_get (int *) ;

__attribute__((used)) static void *
base_extent_bump_alloc_helper(extent_t *extent, size_t *gap_size, size_t size,
    size_t alignment) {
 void *ret;

 assert(alignment == ALIGNMENT_CEILING(alignment, QUANTUM));
 assert(size == ALIGNMENT_CEILING(size, alignment));

 *gap_size = ALIGNMENT_CEILING((uintptr_t)extent_addr_get(extent),
     alignment) - (uintptr_t)extent_addr_get(extent);
 ret = (void *)((uintptr_t)extent_addr_get(extent) + *gap_size);
 assert(extent_bsize_get(extent) >= *gap_size + size);
 extent_binit(extent, (void *)((uintptr_t)extent_addr_get(extent) +
     *gap_size + size), extent_bsize_get(extent) - *gap_size - size,
     extent_sn_get(extent));
 return ret;
}
