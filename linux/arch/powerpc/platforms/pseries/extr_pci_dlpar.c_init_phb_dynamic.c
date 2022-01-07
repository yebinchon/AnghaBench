
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int bus; int controller_ops; } ;
struct device_node {scalar_t__ child; } ;


 int PCI_DN (struct device_node*) ;
 int eeh_add_device_tree_early (int ) ;
 int eeh_dev_phb_init_dynamic (struct pci_controller*) ;
 int pci_devs_phb_init_dynamic (struct pci_controller*) ;
 int pci_process_bridge_OF_ranges (struct pci_controller*,struct device_node*,int ) ;
 struct pci_controller* pcibios_alloc_controller (struct device_node*) ;
 int pcibios_finish_adding_to_bus (int ) ;
 int pcibios_scan_phb (struct pci_controller*) ;
 int pr_debug (char*,struct device_node*) ;
 int pseries_pci_controller_ops ;
 int rtas_setup_phb (struct pci_controller*) ;

struct pci_controller *init_phb_dynamic(struct device_node *dn)
{
 struct pci_controller *phb;

 pr_debug("PCI: Initializing new hotplug PHB %pOF\n", dn);

 phb = pcibios_alloc_controller(dn);
 if (!phb)
  return ((void*)0);
 rtas_setup_phb(phb);
 pci_process_bridge_OF_ranges(phb, dn, 0);
 phb->controller_ops = pseries_pci_controller_ops;

 pci_devs_phb_init_dynamic(phb);


 eeh_dev_phb_init_dynamic(phb);

 if (dn->child)
  eeh_add_device_tree_early(PCI_DN(dn));

 pcibios_scan_phb(phb);
 pcibios_finish_adding_to_bus(phb->bus);

 return phb;
}
