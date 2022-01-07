
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {scalar_t__ parent; } ;


 int pci_read_bridge_bases (struct pci_bus*) ;

void pcibios_fixup_bus(struct pci_bus *bus)
{
 if (bus->parent) {

  pci_read_bridge_bases(bus);
 }
}
