
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ end; scalar_t__ start; } ;
struct pci_controller {int * io_base_alloc; int * dn; } ;
struct pci_bus {scalar_t__ self; struct resource** resource; } ;


 int WARN_ON (int ) ;
 scalar_t__ _IO_BASE ;
 int __flush_hash_table_range (int *,scalar_t__,scalar_t__) ;
 int init_mm ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 int * pci_name (scalar_t__) ;
 int pr_debug (char*,int *) ;
 int vunmap (int *) ;

int pcibios_unmap_io_space(struct pci_bus *bus)
{
 struct pci_controller *hose;

 WARN_ON(bus == ((void*)0));
 if (bus->self) {




  pr_debug("IO unmapping for PCI-PCI bridge %s\n",
    pci_name(bus->self));





  return 0;
 }


 hose = pci_bus_to_host(bus);


 if (hose->io_base_alloc == ((void*)0))
  return 0;

 pr_debug("IO unmapping for PHB %pOF\n", hose->dn);
 pr_debug("  alloc=0x%p\n", hose->io_base_alloc);


 vunmap(hose->io_base_alloc);

 return 0;
}
