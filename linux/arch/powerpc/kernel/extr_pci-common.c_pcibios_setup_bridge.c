
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* setup_bridge ) (struct pci_bus*,unsigned long) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;
struct pci_bus {int dummy; } ;


 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 int stub1 (struct pci_bus*,unsigned long) ;

void pcibios_setup_bridge(struct pci_bus *bus, unsigned long type)
{
 struct pci_controller *hose = pci_bus_to_host(bus);

 if (hose->controller_ops.setup_bridge)
  hose->controller_ops.setup_bridge(bus, type);
}
