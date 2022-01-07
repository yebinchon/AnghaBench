
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_table {unsigned long it_page_shift; unsigned long it_offset; int it_map; TYPE_1__* it_ops; } ;
struct iommu_pool {int lock; } ;
typedef unsigned long dma_addr_t ;
struct TYPE_2__ {int (* clear ) (struct iommu_table*,unsigned long,unsigned int) ;} ;


 int bitmap_clear (int ,unsigned long,unsigned int) ;
 struct iommu_pool* get_pool (struct iommu_table*,unsigned long) ;
 int iommu_free_check (struct iommu_table*,unsigned long,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct iommu_table*,unsigned long,unsigned int) ;

__attribute__((used)) static void __iommu_free(struct iommu_table *tbl, dma_addr_t dma_addr,
    unsigned int npages)
{
 unsigned long entry, free_entry;
 unsigned long flags;
 struct iommu_pool *pool;

 entry = dma_addr >> tbl->it_page_shift;
 free_entry = entry - tbl->it_offset;

 pool = get_pool(tbl, free_entry);

 if (!iommu_free_check(tbl, dma_addr, npages))
  return;

 tbl->it_ops->clear(tbl, entry, npages);

 spin_lock_irqsave(&(pool->lock), flags);
 bitmap_clear(tbl->it_map, free_entry, npages);
 spin_unlock_irqrestore(&(pool->lock), flags);
}
