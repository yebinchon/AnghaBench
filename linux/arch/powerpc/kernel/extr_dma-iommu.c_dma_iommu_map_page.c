
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int dma_direct_map_page (struct device*,struct page*,unsigned long,size_t,int,unsigned long) ;
 int dma_get_mask (struct device*) ;
 scalar_t__ dma_iommu_map_bypass (struct device*,unsigned long) ;
 int get_iommu_table_base (struct device*) ;
 int iommu_map_page (struct device*,int ,struct page*,unsigned long,size_t,int ,int,unsigned long) ;

__attribute__((used)) static dma_addr_t dma_iommu_map_page(struct device *dev, struct page *page,
         unsigned long offset, size_t size,
         enum dma_data_direction direction,
         unsigned long attrs)
{
 if (dma_iommu_map_bypass(dev, attrs))
  return dma_direct_map_page(dev, page, offset, size, direction,
    attrs);
 return iommu_map_page(dev, get_iommu_table_base(dev), page, offset,
         size, dma_get_mask(dev), direction, attrs);
}
