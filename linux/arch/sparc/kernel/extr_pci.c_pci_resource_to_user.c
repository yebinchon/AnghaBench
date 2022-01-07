
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pci_dev {int bus; } ;
struct pci_bus_region {int end; int start; } ;
typedef int resource_size_t ;


 int pcibios_resource_to_bus (int ,struct pci_bus_region*,struct resource*) ;

void pci_resource_to_user(const struct pci_dev *pdev, int bar,
     const struct resource *rp, resource_size_t *start,
     resource_size_t *end)
{
 struct pci_bus_region region;
 pcibios_resource_to_bus(pdev->bus, &region, (struct resource *) rp);
 *start = region.start;
 *end = region.end;
}
