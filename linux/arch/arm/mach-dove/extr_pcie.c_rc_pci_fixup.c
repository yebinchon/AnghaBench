
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {scalar_t__ devfn; TYPE_2__* resource; TYPE_1__* bus; } ;
struct TYPE_4__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_3__ {int * parent; } ;


 int DEVICE_COUNT_RESOURCE ;

__attribute__((used)) static void rc_pci_fixup(struct pci_dev *dev)
{



 if (dev->bus->parent == ((void*)0) && dev->devfn == 0) {
  int i;

  for (i = 0; i < DEVICE_COUNT_RESOURCE; i++) {
   dev->resource[i].start = 0;
   dev->resource[i].end = 0;
   dev->resource[i].flags = 0;
  }
 }
}
