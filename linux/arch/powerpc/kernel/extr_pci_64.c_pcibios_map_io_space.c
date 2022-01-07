
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {TYPE_1__** resource; scalar_t__ self; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;


 int WARN_ON (int ) ;
 scalar_t__ _IO_BASE ;
 int pci_bus_to_host (struct pci_bus*) ;
 int pci_name (scalar_t__) ;
 int pcibios_map_phb_io_space (int ) ;
 int pr_debug (char*,scalar_t__,...) ;

int pcibios_map_io_space(struct pci_bus *bus)
{
 WARN_ON(bus == ((void*)0));




 if (bus->self) {
  pr_debug("IO mapping for PCI-PCI bridge %s\n",
    pci_name(bus->self));
  pr_debug("  virt=0x%016llx...0x%016llx\n",
    bus->resource[0]->start + _IO_BASE,
    bus->resource[0]->end + _IO_BASE);
  return 0;
 }

 return pcibios_map_phb_io_space(pci_bus_to_host(bus));
}
