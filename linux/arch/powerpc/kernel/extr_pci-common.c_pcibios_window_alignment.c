
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* window_alignment ) (struct pci_bus*,unsigned long) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;
struct pci_bus {int dummy; } ;
typedef int resource_size_t ;


 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 int stub1 (struct pci_bus*,unsigned long) ;

resource_size_t pcibios_window_alignment(struct pci_bus *bus,
      unsigned long type)
{
 struct pci_controller *phb = pci_bus_to_host(bus);

 if (phb->controller_ops.window_alignment)
  return phb->controller_ops.window_alignment(bus, type);






 return 1;
}
