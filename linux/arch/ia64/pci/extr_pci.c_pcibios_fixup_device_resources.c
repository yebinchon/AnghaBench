
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; scalar_t__ parent; int flags; } ;
struct pci_dev {struct resource* resource; int bus; } ;


 int PCI_BRIDGE_RESOURCES ;
 int pci_claim_resource (struct pci_dev*,int) ;

void pcibios_fixup_device_resources(struct pci_dev *dev)
{
 int idx;

 if (!dev->bus)
  return;

 for (idx = 0; idx < PCI_BRIDGE_RESOURCES; idx++) {
  struct resource *r = &dev->resource[idx];

  if (!r->flags || r->parent || !r->start)
   continue;

  pci_claim_resource(dev, idx);
 }
}
