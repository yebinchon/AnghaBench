
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;
struct device {int dummy; } ;
typedef unsigned long dma_addr_t ;


 unsigned long DMA_MAPPING_ERROR ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long iommu_range_alloc (struct device*,struct iommu_table*,unsigned int) ;
 int pr_warn (char*,unsigned int,struct iommu_table*) ;
 int tce_build (struct iommu_table*,unsigned long,unsigned int,unsigned long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static dma_addr_t iommu_alloc(struct device *dev, struct iommu_table *tbl,
         void *vaddr, unsigned int npages, int direction)
{
 unsigned long entry;
 dma_addr_t ret;

 entry = iommu_range_alloc(dev, tbl, npages);
 if (unlikely(entry == DMA_MAPPING_ERROR)) {
  pr_warn("failed to allocate %u pages in iommu %p\n",
   npages, tbl);
  return DMA_MAPPING_ERROR;
 }


 ret = (entry << PAGE_SHIFT) | ((unsigned long)vaddr & ~PAGE_MASK);


 tce_build(tbl, entry, npages, (unsigned long)vaddr & PAGE_MASK,
    direction);
 return ret;
}
