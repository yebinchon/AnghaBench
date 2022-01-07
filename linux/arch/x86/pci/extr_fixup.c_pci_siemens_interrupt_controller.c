
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* resource; } ;
struct TYPE_2__ {int flags; } ;


 int IORESOURCE_PCI_FIXED ;

__attribute__((used)) static void pci_siemens_interrupt_controller(struct pci_dev *dev)
{
 dev->resource[0].flags |= IORESOURCE_PCI_FIXED;
}
