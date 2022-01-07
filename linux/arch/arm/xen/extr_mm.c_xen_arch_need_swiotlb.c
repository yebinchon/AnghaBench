
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 unsigned int XEN_PFN_DOWN (int ) ;
 int dev_is_dma_coherent (struct device*) ;
 int hypercall_cflush ;

bool xen_arch_need_swiotlb(struct device *dev,
      phys_addr_t phys,
      dma_addr_t dev_addr)
{
 unsigned int xen_pfn = XEN_PFN_DOWN(phys);
 unsigned int bfn = XEN_PFN_DOWN(dev_addr);
 return (!hypercall_cflush && (xen_pfn != bfn) &&
  !dev_is_dma_coherent(dev));
}
