
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_sta2x11; } ;
struct device {TYPE_1__ archdata; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int p2a (int ,int ) ;
 int to_pci_dev (struct device*) ;

dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
{
 if (!dev->archdata.is_sta2x11)
  return paddr;
 return p2a(paddr, to_pci_dev(dev));
}
