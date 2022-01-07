
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int AR2315_PCI_HOST_SDRAM_BASEADDR ;
 scalar_t__ dev_is_pci (struct device*) ;

__attribute__((used)) static inline dma_addr_t ar2315_dev_offset(struct device *dev)
{
 if (dev && dev_is_pci(dev))
  return AR2315_PCI_HOST_SDRAM_BASEADDR;
 return 0;
}
