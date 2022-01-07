
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dev; } ;


 int KERN_DEBUG ;
 int PCI_ASSIGN_ROMS ;
 int dev_printk (int ,int *,char*) ;
 int pci_probe ;
 int pcibios_allocate_bus_resources (struct pci_bus*) ;
 int pcibios_allocate_resources (struct pci_bus*,int) ;
 int pcibios_allocate_rom_resources (struct pci_bus*) ;

void pcibios_resource_survey_bus(struct pci_bus *bus)
{
 dev_printk(KERN_DEBUG, &bus->dev, "Allocating resources\n");

 pcibios_allocate_bus_resources(bus);

 pcibios_allocate_resources(bus, 0);
 pcibios_allocate_resources(bus, 1);

 if (!(pci_probe & PCI_ASSIGN_ROMS))
  pcibios_allocate_rom_resources(bus);
}
