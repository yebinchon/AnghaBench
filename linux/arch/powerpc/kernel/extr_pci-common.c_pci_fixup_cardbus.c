
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int pcibios_setup_bus_devices (struct pci_bus*) ;

void pci_fixup_cardbus(struct pci_bus *bus)
{

 pcibios_setup_bus_devices(bus);
}
