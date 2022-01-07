
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int end; int start; } ;
struct pci_dev {int bus; } ;
struct pci_bus_region {int end; int start; } ;
typedef int resource_size_t ;


 int IORESOURCE_IO ;
 int pcibios_resource_to_bus (int ,struct pci_bus_region*,struct resource*) ;

void pci_resource_to_user(const struct pci_dev *dev, int bar,
     const struct resource *rsrc,
     resource_size_t *start, resource_size_t *end)
{
 struct pci_bus_region region;

 if (rsrc->flags & IORESOURCE_IO) {
  pcibios_resource_to_bus(dev->bus, &region,
     (struct resource *) rsrc);
  *start = region.start;
  *end = region.end;
  return;
 }
 *start = rsrc->start;
 *end = rsrc->end;
}
