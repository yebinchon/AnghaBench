
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int dma_direct_unmap_page (struct device*,int ,size_t,int,unsigned long) ;
 int dma_iommu_map_bypass (struct device*,unsigned long) ;
 int get_iommu_table_base (struct device*) ;
 int iommu_unmap_page (int ,int ,size_t,int,unsigned long) ;

__attribute__((used)) static void dma_iommu_unmap_page(struct device *dev, dma_addr_t dma_handle,
     size_t size, enum dma_data_direction direction,
     unsigned long attrs)
{
 if (!dma_iommu_map_bypass(dev, attrs))
  iommu_unmap_page(get_iommu_table_base(dev), dma_handle, size,
    direction, attrs);
 else
  dma_direct_unmap_page(dev, dma_handle, size, direction, attrs);
}
