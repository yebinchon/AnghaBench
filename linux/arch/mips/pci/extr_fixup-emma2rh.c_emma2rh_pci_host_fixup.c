
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int class; TYPE_1__* resource; int devfn; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;


 scalar_t__ EMMA2RH_PCI_HOST_SLOT ;
 int PCI_CLASS_BRIDGE_HOST ;
 int PCI_NUM_RESOURCES ;
 scalar_t__ PCI_SLOT (int ) ;

__attribute__((used)) static void emma2rh_pci_host_fixup(struct pci_dev *dev)
{
 int i;

 if (PCI_SLOT(dev->devfn) == EMMA2RH_PCI_HOST_SLOT) {
  dev->class &= 0xff;
  dev->class |= PCI_CLASS_BRIDGE_HOST << 8;
  for (i = 0; i < PCI_NUM_RESOURCES; i++) {
   dev->resource[i].start = 0;
   dev->resource[i].end = 0;
   dev->resource[i].flags = 0;
  }
 }
}
