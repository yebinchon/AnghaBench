
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 unsigned long DMA_ATTR_SKIP_CPU_SYNC ;
 int PAGE_MASK ;
 int __dma_page_dev_to_cpu (int ,int,size_t,int) ;
 int dma_to_pfn (struct device*,int) ;
 int pfn_to_page (int ) ;

__attribute__((used)) static void arm_dma_unmap_page(struct device *dev, dma_addr_t handle,
  size_t size, enum dma_data_direction dir, unsigned long attrs)
{
 if ((attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
  __dma_page_dev_to_cpu(pfn_to_page(dma_to_pfn(dev, handle)),
          handle & ~PAGE_MASK, size, dir);
}
