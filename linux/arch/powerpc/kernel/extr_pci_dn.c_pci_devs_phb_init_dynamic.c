
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int devfn; int busno; struct pci_controller* phb; scalar_t__ class_code; scalar_t__ device_id; scalar_t__ vendor_id; } ;
struct pci_controller {struct pci_dn* pci_data; struct device_node* dn; } ;
struct device_node {int dummy; } ;


 int add_pdn ;
 struct pci_dn* pci_add_device_node_info (struct pci_controller*,struct device_node*) ;
 int pci_traverse_device_nodes (struct device_node*,int ,struct pci_controller*) ;

void pci_devs_phb_init_dynamic(struct pci_controller *phb)
{
 struct device_node *dn = phb->dn;
 struct pci_dn *pdn;


 pdn = pci_add_device_node_info(phb, dn);
 if (pdn) {
  pdn->devfn = pdn->busno = -1;
  pdn->vendor_id = pdn->device_id = pdn->class_code = 0;
  pdn->phb = phb;
  phb->pci_data = pdn;
 }


 pci_traverse_device_nodes(dn, add_pdn, phb);
}
