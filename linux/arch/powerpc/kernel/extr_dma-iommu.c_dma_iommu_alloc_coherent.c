
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int coherent_dma_mask; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int dev_to_node (struct device*) ;
 void* dma_direct_alloc (struct device*,size_t,int *,int ,unsigned long) ;
 scalar_t__ dma_iommu_alloc_bypass (struct device*) ;
 int get_iommu_table_base (struct device*) ;
 void* iommu_alloc_coherent (struct device*,int ,size_t,int *,int ,int ,int ) ;

__attribute__((used)) static void *dma_iommu_alloc_coherent(struct device *dev, size_t size,
          dma_addr_t *dma_handle, gfp_t flag,
          unsigned long attrs)
{
 if (dma_iommu_alloc_bypass(dev))
  return dma_direct_alloc(dev, size, dma_handle, flag, attrs);
 return iommu_alloc_coherent(dev, get_iommu_table_base(dev), size,
        dma_handle, dev->coherent_dma_mask, flag,
        dev_to_node(dev));
}
