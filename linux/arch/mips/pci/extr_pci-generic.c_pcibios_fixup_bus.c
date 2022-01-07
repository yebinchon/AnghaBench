
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int pci_read_bridge_bases (struct pci_bus*) ;

void pcibios_fixup_bus(struct pci_bus *bus)
{
 pci_read_bridge_bases(bus);
}
