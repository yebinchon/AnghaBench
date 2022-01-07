
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int dma_sync_virt (void*,size_t,int) ;

void arch_dma_cache_sync(struct device *dev, void *vaddr, size_t size,
  enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);

 dma_sync_virt(vaddr, size, direction);
}
