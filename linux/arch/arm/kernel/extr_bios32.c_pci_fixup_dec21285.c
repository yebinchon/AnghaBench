
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ devfn; int class; TYPE_1__* resource; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;


 int PCI_CLASS_BRIDGE_HOST ;
 int PCI_NUM_RESOURCES ;

__attribute__((used)) static void pci_fixup_dec21285(struct pci_dev *dev)
{
 int i;

 if (dev->devfn == 0) {
  dev->class &= 0xff;
  dev->class |= PCI_CLASS_BRIDGE_HOST << 8;
  for (i = 0; i < PCI_NUM_RESOURCES; i++) {
   dev->resource[i].start = 0;
   dev->resource[i].end = 0;
   dev->resource[i].flags = 0;
  }
 }
}
