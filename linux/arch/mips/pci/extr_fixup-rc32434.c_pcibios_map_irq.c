
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int GROUP4_IRQ_BASE ;
 size_t PCI_SLOT (int ) ;
 int** irq_map ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 int irq = 0;

 if (dev->bus->number < 2 && PCI_SLOT(dev->devfn) < 12)
  irq = irq_map[dev->bus->number][PCI_SLOT(dev->devfn)];

 return irq + GROUP4_IRQ_BASE + 4;
}
