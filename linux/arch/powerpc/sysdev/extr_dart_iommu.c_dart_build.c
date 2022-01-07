
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {scalar_t__ it_base; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 unsigned int DARTMAP_RPNMASK ;
 unsigned int DARTMAP_VALID ;
 unsigned int DART_PAGE_SHIFT ;
 scalar_t__ DART_PAGE_SIZE ;
 int DBG (char*,long,long,unsigned long) ;
 unsigned int __pa (unsigned long) ;
 int dart_cache_sync (unsigned int*,long) ;
 int dart_dirty ;
 scalar_t__ dart_is_u4 ;
 int dart_tlb_invalidate_one (int ) ;

__attribute__((used)) static int dart_build(struct iommu_table *tbl, long index,
         long npages, unsigned long uaddr,
         enum dma_data_direction direction,
         unsigned long attrs)
{
 unsigned int *dp, *orig_dp;
 unsigned int rpn;
 long l;

 DBG("dart: build at: %lx, %lx, addr: %x\n", index, npages, uaddr);

 orig_dp = dp = ((unsigned int*)tbl->it_base) + index;




 l = npages;
 while (l--) {
  rpn = __pa(uaddr) >> DART_PAGE_SHIFT;

  *(dp++) = DARTMAP_VALID | (rpn & DARTMAP_RPNMASK);

  uaddr += DART_PAGE_SIZE;
 }
 dart_cache_sync(orig_dp, npages);

 if (dart_is_u4) {
  rpn = index;
  while (npages--)
   dart_tlb_invalidate_one(rpn++);
 } else {
  dart_dirty = 1;
 }
 return 0;
}
