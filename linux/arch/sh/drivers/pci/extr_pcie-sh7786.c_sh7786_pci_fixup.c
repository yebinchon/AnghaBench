
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ devfn; TYPE_1__* resource; int bus; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;


 int DEVICE_COUNT_RESOURCE ;
 scalar_t__ pci_is_root_bus (int ) ;

__attribute__((used)) static void sh7786_pci_fixup(struct pci_dev *dev)
{



 if (pci_is_root_bus(dev->bus) && dev->devfn == 0) {
  int i;

  for (i = 0; i < DEVICE_COUNT_RESOURCE; i++) {
   dev->resource[i].start = 0;
   dev->resource[i].end = 0;
   dev->resource[i].flags = 0;
  }
 }
}
