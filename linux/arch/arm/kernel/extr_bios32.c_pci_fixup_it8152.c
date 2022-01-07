
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int class; TYPE_1__* resource; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;


 int PCI_CLASS_BRIDGE_HOST ;
 int PCI_NUM_RESOURCES ;

__attribute__((used)) static void pci_fixup_it8152(struct pci_dev *dev)
{
 int i;


 if ((dev->class >> 8) == PCI_CLASS_BRIDGE_HOST ||
     dev->class == 0x68000 ||
     dev->class == 0x80103) {
  for (i = 0; i < PCI_NUM_RESOURCES; i++) {
   dev->resource[i].start = 0;
   dev->resource[i].end = 0;
   dev->resource[i].flags = 0;
  }
 }
}
