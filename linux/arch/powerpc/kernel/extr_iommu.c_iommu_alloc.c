
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_table {unsigned long it_page_shift; TYPE_1__* it_ops; scalar_t__ it_offset; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;
struct TYPE_2__ {int (* set ) (struct iommu_table*,unsigned long,unsigned int,unsigned long,int,unsigned long) ;int (* flush ) (struct iommu_table*) ;} ;


 unsigned long DMA_MAPPING_ERROR ;
 unsigned long IOMMU_PAGE_MASK (struct iommu_table*) ;
 int __iommu_free (struct iommu_table*,unsigned long,unsigned int) ;
 unsigned long iommu_range_alloc (struct device*,struct iommu_table*,unsigned int,int *,unsigned long,unsigned int) ;
 int mb () ;
 int stub1 (struct iommu_table*,unsigned long,unsigned int,unsigned long,int,unsigned long) ;
 int stub2 (struct iommu_table*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static dma_addr_t iommu_alloc(struct device *dev, struct iommu_table *tbl,
         void *page, unsigned int npages,
         enum dma_data_direction direction,
         unsigned long mask, unsigned int align_order,
         unsigned long attrs)
{
 unsigned long entry;
 dma_addr_t ret = DMA_MAPPING_ERROR;
 int build_fail;

 entry = iommu_range_alloc(dev, tbl, npages, ((void*)0), mask, align_order);

 if (unlikely(entry == DMA_MAPPING_ERROR))
  return DMA_MAPPING_ERROR;

 entry += tbl->it_offset;
 ret = entry << tbl->it_page_shift;


 build_fail = tbl->it_ops->set(tbl, entry, npages,
          (unsigned long)page &
          IOMMU_PAGE_MASK(tbl), direction, attrs);






 if (unlikely(build_fail)) {
  __iommu_free(tbl, ret, npages);
  return DMA_MAPPING_ERROR;
 }


 if (tbl->it_ops->flush)
  tbl->it_ops->flush(tbl);


 mb();

 return ret;
}
