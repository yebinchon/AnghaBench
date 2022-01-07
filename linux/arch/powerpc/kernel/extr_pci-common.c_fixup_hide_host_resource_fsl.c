
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int class; scalar_t__ hdr_type; TYPE_2__* resource; TYPE_1__* bus; } ;
struct TYPE_4__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_3__ {int * parent; } ;


 int DEVICE_COUNT_RESOURCE ;
 int PCI_CLASS_BRIDGE_OTHER ;
 int PCI_CLASS_PROCESSOR_POWERPC ;
 scalar_t__ PCI_HEADER_TYPE_NORMAL ;

__attribute__((used)) static void fixup_hide_host_resource_fsl(struct pci_dev *dev)
{
 int i, class = dev->class >> 8;

 int prog_if = dev->class & 0xf;

 if ((class == PCI_CLASS_PROCESSOR_POWERPC ||
      class == PCI_CLASS_BRIDGE_OTHER) &&
  (dev->hdr_type == PCI_HEADER_TYPE_NORMAL) &&
  (prog_if == 0) &&
  (dev->bus->parent == ((void*)0))) {
  for (i = 0; i < DEVICE_COUNT_RESOURCE; i++) {
   dev->resource[i].start = 0;
   dev->resource[i].end = 0;
   dev->resource[i].flags = 0;
  }
 }
}
