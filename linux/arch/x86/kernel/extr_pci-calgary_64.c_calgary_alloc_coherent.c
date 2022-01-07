
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ DMA_MAPPING_ERROR ;
 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SHIFT ;
 scalar_t__ __get_free_pages (int ,unsigned int) ;
 struct iommu_table* find_iommu_table (struct device*) ;
 int free_pages (unsigned long,unsigned int) ;
 unsigned int get_order (size_t) ;
 scalar_t__ iommu_alloc (struct device*,struct iommu_table*,void*,unsigned int,int ) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void* calgary_alloc_coherent(struct device *dev, size_t size,
 dma_addr_t *dma_handle, gfp_t flag, unsigned long attrs)
{
 void *ret = ((void*)0);
 dma_addr_t mapping;
 unsigned int npages, order;
 struct iommu_table *tbl = find_iommu_table(dev);

 size = PAGE_ALIGN(size);
 npages = size >> PAGE_SHIFT;
 order = get_order(size);


 ret = (void *)__get_free_pages(flag, order);
 if (!ret)
  goto error;
 memset(ret, 0, size);


 mapping = iommu_alloc(dev, tbl, ret, npages, DMA_BIDIRECTIONAL);
 if (mapping == DMA_MAPPING_ERROR)
  goto free;
 *dma_handle = mapping;
 return ret;
free:
 free_pages((unsigned long)ret, get_order(size));
 ret = ((void*)0);
error:
 return ret;
}
