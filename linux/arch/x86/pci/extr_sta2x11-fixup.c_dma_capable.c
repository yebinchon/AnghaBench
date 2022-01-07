
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta2x11_mapping {int amba_base; } ;
struct TYPE_2__ {int is_sta2x11; } ;
struct device {int* dma_mask; TYPE_1__ archdata; } ;
typedef int dma_addr_t ;


 int STA2X11_AMBA_SIZE ;
 struct sta2x11_mapping* sta2x11_pdev_to_mapping (int ) ;
 int to_pci_dev (struct device*) ;

bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
{
 struct sta2x11_mapping *map;

 if (!dev->archdata.is_sta2x11) {
  if (!dev->dma_mask)
   return 0;
  return addr + size - 1 <= *dev->dma_mask;
 }

 map = sta2x11_pdev_to_mapping(to_pci_dev(dev));

 if (!map || (addr < map->amba_base))
  return 0;
 if (addr + size >= map->amba_base + STA2X11_AMBA_SIZE) {
  return 0;
 }

 return 1;
}
