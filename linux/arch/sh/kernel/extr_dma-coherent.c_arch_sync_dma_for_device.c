
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG () ;



 int __flush_invalidate_region (void*,size_t) ;
 int __flush_purge_region (void*,size_t) ;
 int __flush_wback_region (void*,size_t) ;
 int phys_to_virt (int ) ;
 void* sh_cacheop_vaddr (int ) ;

void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
  size_t size, enum dma_data_direction dir)
{
 void *addr = sh_cacheop_vaddr(phys_to_virt(paddr));

 switch (dir) {
 case 129:
  __flush_invalidate_region(addr, size);
  break;
 case 128:
  __flush_wback_region(addr, size);
  break;
 case 130:
  __flush_purge_region(addr, size);
  break;
 default:
  BUG();
 }
}
