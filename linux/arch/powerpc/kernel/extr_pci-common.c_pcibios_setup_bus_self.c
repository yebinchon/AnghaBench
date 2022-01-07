
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* dma_bus_setup ) (struct pci_bus*) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;
struct pci_bus {int * self; } ;
struct TYPE_4__ {int (* pcibios_fixup_bus ) (struct pci_bus*) ;} ;


 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 int pcibios_fixup_bridge (struct pci_bus*) ;
 TYPE_2__ ppc_md ;
 int stub1 (struct pci_bus*) ;
 int stub2 (struct pci_bus*) ;

void pcibios_setup_bus_self(struct pci_bus *bus)
{
 struct pci_controller *phb;


 if (bus->self != ((void*)0))
  pcibios_fixup_bridge(bus);




 if (ppc_md.pcibios_fixup_bus)
  ppc_md.pcibios_fixup_bus(bus);


 phb = pci_bus_to_host(bus);
 if (phb->controller_ops.dma_bus_setup)
  phb->controller_ops.dma_bus_setup(bus);
}
