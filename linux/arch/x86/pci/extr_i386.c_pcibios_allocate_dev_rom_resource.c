
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; int end; scalar_t__ parent; int flags; } ;
struct pci_dev {struct resource* resource; } ;


 size_t PCI_ROM_RESOURCE ;
 scalar_t__ pci_claim_resource (struct pci_dev*,size_t) ;

__attribute__((used)) static void pcibios_allocate_dev_rom_resource(struct pci_dev *dev)
{
 struct resource *r;






 r = &dev->resource[PCI_ROM_RESOURCE];
 if (!r->flags || !r->start)
  return;
 if (r->parent)
  return;

 if (pci_claim_resource(dev, PCI_ROM_RESOURCE) < 0) {
  r->end -= r->start;
  r->start = 0;
 }
}
