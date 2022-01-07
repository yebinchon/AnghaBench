
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {scalar_t__ self; int number; } ;


 int PCI_PROBE_ONLY ;
 int eeh_add_device_tree_late (struct pci_bus*) ;
 int eeh_add_sysfs_files (struct pci_bus*) ;
 int pci_assign_unassigned_bridge_resources (scalar_t__) ;
 int pci_assign_unassigned_bus_resources (struct pci_bus*) ;
 int pci_bus_add_devices (struct pci_bus*) ;
 int pci_domain_nr (struct pci_bus*) ;
 int pci_has_flag (int ) ;
 int pcibios_allocate_bus_resources (struct pci_bus*) ;
 int pcibios_claim_one_bus (struct pci_bus*) ;
 int pr_debug (char*,int ,int ) ;

void pcibios_finish_adding_to_bus(struct pci_bus *bus)
{
 pr_debug("PCI: Finishing adding to hotplug bus %04x:%02x\n",
   pci_domain_nr(bus), bus->number);


 pcibios_allocate_bus_resources(bus);
 pcibios_claim_one_bus(bus);
 if (!pci_has_flag(PCI_PROBE_ONLY)) {
  if (bus->self)
   pci_assign_unassigned_bridge_resources(bus->self);
  else
   pci_assign_unassigned_bus_resources(bus);
 }


 eeh_add_device_tree_late(bus);


 pci_bus_add_devices(bus);


 eeh_add_sysfs_files(bus);
}
