
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;





 int dma_cache_inv (int ,size_t) ;
 int dma_cache_wback (int ,size_t) ;
 int dma_cache_wback_inv (int ,size_t) ;

void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
  size_t size, enum dma_data_direction dir)
{
 switch (dir) {
 case 128:
  dma_cache_wback(paddr, size);
  break;

 case 129:
  dma_cache_inv(paddr, size);
  break;

 case 130:
  dma_cache_wback_inv(paddr, size);
  break;

 default:
  break;
 }
}
