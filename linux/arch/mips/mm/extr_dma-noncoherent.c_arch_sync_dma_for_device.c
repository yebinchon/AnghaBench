
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_sync_phys (int ,size_t,int) ;

void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
  size_t size, enum dma_data_direction dir)
{
 dma_sync_phys(paddr, size, dir);
}
