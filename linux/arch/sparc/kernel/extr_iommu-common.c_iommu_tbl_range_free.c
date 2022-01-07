
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct iommu_pool {int lock; } ;
struct iommu_map_table {unsigned long table_shift; unsigned long table_map_base; int map; } ;


 unsigned long IOMMU_ERROR_CODE ;
 int bitmap_clear (int ,unsigned long,unsigned long) ;
 struct iommu_pool* get_pool (struct iommu_map_table*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void iommu_tbl_range_free(struct iommu_map_table *iommu, u64 dma_addr,
     unsigned long npages, unsigned long entry)
{
 struct iommu_pool *pool;
 unsigned long flags;
 unsigned long shift = iommu->table_shift;

 if (entry == IOMMU_ERROR_CODE)
  entry = (dma_addr - iommu->table_map_base) >> shift;
 pool = get_pool(iommu, entry);

 spin_lock_irqsave(&(pool->lock), flags);
 bitmap_clear(iommu->map, entry, npages);
 spin_unlock_irqrestore(&(pool->lock), flags);
}
