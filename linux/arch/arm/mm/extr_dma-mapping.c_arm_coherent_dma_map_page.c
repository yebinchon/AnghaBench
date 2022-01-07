
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int page_to_pfn (struct page*) ;
 scalar_t__ pfn_to_dma (struct device*,int ) ;

__attribute__((used)) static dma_addr_t arm_coherent_dma_map_page(struct device *dev, struct page *page,
      unsigned long offset, size_t size, enum dma_data_direction dir,
      unsigned long attrs)
{
 return pfn_to_dma(dev, page_to_pfn(page)) + offset;
}
