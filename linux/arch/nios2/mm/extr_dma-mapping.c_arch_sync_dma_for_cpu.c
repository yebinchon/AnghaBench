
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG () ;



 int invalidate_dcache_range (unsigned long,unsigned long) ;
 void* phys_to_virt (int ) ;

void arch_sync_dma_for_cpu(struct device *dev, phys_addr_t paddr,
  size_t size, enum dma_data_direction dir)
{
 void *vaddr = phys_to_virt(paddr);

 switch (dir) {
 case 130:
 case 129:
  invalidate_dcache_range((unsigned long)vaddr,
   (unsigned long)(vaddr + size));
  break;
 case 128:
  break;
 default:
  BUG();
 }
}
