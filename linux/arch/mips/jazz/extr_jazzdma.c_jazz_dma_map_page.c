
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 unsigned long DMA_ATTR_SKIP_CPU_SYNC ;
 int arch_sync_dma_for_device (struct device*,scalar_t__,size_t,int) ;
 scalar_t__ page_to_phys (struct page*) ;
 int vdma_alloc (scalar_t__,size_t) ;

__attribute__((used)) static dma_addr_t jazz_dma_map_page(struct device *dev, struct page *page,
  unsigned long offset, size_t size, enum dma_data_direction dir,
  unsigned long attrs)
{
 phys_addr_t phys = page_to_phys(page) + offset;

 if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
  arch_sync_dma_for_device(dev, phys, size, dir);
 return vdma_alloc(phys, size);
}
