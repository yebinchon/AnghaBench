
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int acpi_pci_add_bus (struct pci_bus*) ;

void pcibios_add_bus(struct pci_bus *bus)
{
 acpi_pci_add_bus(bus);
}
