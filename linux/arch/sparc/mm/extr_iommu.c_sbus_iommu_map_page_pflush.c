
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int __sbus_iommu_map_page (struct device*,struct page*,unsigned long,size_t,int) ;

__attribute__((used)) static dma_addr_t sbus_iommu_map_page_pflush(struct device *dev,
  struct page *page, unsigned long offset, size_t len,
  enum dma_data_direction dir, unsigned long attrs)
{
 return __sbus_iommu_map_page(dev, page, offset, len, 1);
}
