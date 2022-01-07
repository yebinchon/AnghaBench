
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int vendor; int device; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; int bridge; scalar_t__ parent; } ;


 int OCTEON_IRQ_PCI_INT0 ;
 int octeon_board_type_string () ;
 scalar_t__ strstr (int ,char*) ;
 struct pci_dev* to_pci_dev (int ) ;

int octeon_pcie_pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{






 if (strstr(octeon_board_type_string(), "EBH5600") &&
     dev->bus && dev->bus->parent) {




  while (dev->bus && dev->bus->parent)
   dev = to_pci_dev(dev->bus->bridge);





  if ((dev->bus->number == 1) &&
      (dev->vendor == 0x10b5) && (dev->device == 0x8114)) {




   pin = ((pin - 3) & 3) + 1;
  }
 }





 return pin - 1 + OCTEON_IRQ_PCI_INT0;
}
