
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; } ;
struct pci_dev {int class; struct resource* resource; } ;


 int PCI_CLASS_STORAGE_IDE ;
 int PCI_NUM_RESOURCES ;

__attribute__((used)) static void pci_fixup_ide_bases(struct pci_dev *dev)
{
 struct resource *r;
 int i;

 if ((dev->class >> 8) != PCI_CLASS_STORAGE_IDE)
  return;

 for (i = 0; i < PCI_NUM_RESOURCES; i++) {
  r = dev->resource + i;
  if ((r->start & ~0x80) == 0x374) {
   r->start |= 2;
   r->end = r->start;
  }
 }
}
