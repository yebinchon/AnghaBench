
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {scalar_t__ release_data; } ;
struct pci_controller {int is_dynamic; int global_number; } ;


 int pcibios_free_controller (struct pci_controller*) ;
 int pr_debug (char*,int ,int ) ;

void pcibios_free_controller_deferred(struct pci_host_bridge *bridge)
{
 struct pci_controller *phb = (struct pci_controller *)
      bridge->release_data;

 pr_debug("domain %d, dynamic %d\n", phb->global_number, phb->is_dynamic);

 pcibios_free_controller(phb);
}
