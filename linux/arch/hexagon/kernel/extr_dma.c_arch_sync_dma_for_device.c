
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG () ;



 int flush_dcache_range (unsigned long,unsigned long) ;
 int hexagon_clean_dcache_range (unsigned long,unsigned long) ;
 int hexagon_inv_dcache_range (unsigned long,unsigned long) ;
 void* phys_to_virt (int ) ;

void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
  size_t size, enum dma_data_direction dir)
{
 void *addr = phys_to_virt(paddr);

 switch (dir) {
 case 128:
  hexagon_clean_dcache_range((unsigned long) addr,
  (unsigned long) addr + size);
  break;
 case 129:
  hexagon_inv_dcache_range((unsigned long) addr,
  (unsigned long) addr + size);
  break;
 case 130:
  flush_dcache_range((unsigned long) addr,
  (unsigned long) addr + size);
  break;
 default:
  BUG();
 }
}
