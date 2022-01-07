
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int __dma_unmap_area (int ,size_t,int) ;
 int phys_to_virt (int ) ;

void arch_sync_dma_for_cpu(struct device *dev, phys_addr_t paddr,
  size_t size, enum dma_data_direction dir)
{
 __dma_unmap_area(phys_to_virt(paddr), size, dir);
}
