
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int cached_kernel_address (void*) ;
 long page_to_pfn (int ) ;
 int virt_to_page (int ) ;

long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
  dma_addr_t dma_addr)
{
 return page_to_pfn(virt_to_page(cached_kernel_address(cpu_addr)));
}
