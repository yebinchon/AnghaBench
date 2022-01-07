
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 unsigned long DMA_ATTR_SKIP_CPU_SYNC ;
 int arch_sync_dma_for_cpu (struct device*,int ,size_t,int) ;
 int vdma_free (int ) ;
 int vdma_log2phys (int ) ;

__attribute__((used)) static void jazz_dma_unmap_page(struct device *dev, dma_addr_t dma_addr,
  size_t size, enum dma_data_direction dir, unsigned long attrs)
{
 if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
  arch_sync_dma_for_cpu(dev, vdma_log2phys(dma_addr), size, dir);
 vdma_free(dma_addr);
}
