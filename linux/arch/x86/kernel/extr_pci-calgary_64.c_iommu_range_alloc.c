
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_table {unsigned long it_size; unsigned long it_hint; int it_lock; int it_map; TYPE_1__* chip_ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* tce_cache_blast ) (struct iommu_table*) ;} ;


 unsigned long ALIGN (scalar_t__,int ) ;
 int BUG_ON (int) ;
 unsigned long DMA_MAPPING_ERROR ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ dma_get_seg_boundary (struct device*) ;
 unsigned long iommu_area_alloc (int ,unsigned long,unsigned long,unsigned int,int ,unsigned long,int ) ;
 int panic (char*) ;
 scalar_t__ panic_on_overflow ;
 int pr_warn (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct iommu_table*) ;

__attribute__((used)) static unsigned long iommu_range_alloc(struct device *dev,
           struct iommu_table *tbl,
           unsigned int npages)
{
 unsigned long flags;
 unsigned long offset;
 unsigned long boundary_size;

 boundary_size = ALIGN(dma_get_seg_boundary(dev) + 1,
         PAGE_SIZE) >> PAGE_SHIFT;

 BUG_ON(npages == 0);

 spin_lock_irqsave(&tbl->it_lock, flags);

 offset = iommu_area_alloc(tbl->it_map, tbl->it_size, tbl->it_hint,
      npages, 0, boundary_size, 0);
 if (offset == ~0UL) {
  tbl->chip_ops->tce_cache_blast(tbl);

  offset = iommu_area_alloc(tbl->it_map, tbl->it_size, 0,
       npages, 0, boundary_size, 0);
  if (offset == ~0UL) {
   pr_warn("IOMMU full\n");
   spin_unlock_irqrestore(&tbl->it_lock, flags);
   if (panic_on_overflow)
    panic("Calgary: fix the allocator.\n");
   else
    return DMA_MAPPING_ERROR;
  }
 }

 tbl->it_hint = offset + npages;
 BUG_ON(tbl->it_hint > tbl->it_size);

 spin_unlock_irqrestore(&tbl->it_lock, flags);

 return offset;
}
