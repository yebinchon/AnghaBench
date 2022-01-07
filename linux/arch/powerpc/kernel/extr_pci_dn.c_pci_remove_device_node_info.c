
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {int flags; int devfn; int busno; TYPE_1__* phb; int list; int child_list; } ;
struct pci_dev {int dummy; } ;
struct eeh_dev {int * pdn; } ;
struct device_node {int * data; } ;
struct TYPE_2__ {int global_number; } ;


 struct pci_dn* PCI_DN (struct device_node*) ;
 int PCI_DN_FLAG_DEAD ;
 int WARN_ON (int) ;
 int kfree (struct pci_dn*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pci_dbg (struct pci_dev*,char*,struct device_node*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;

void pci_remove_device_node_info(struct device_node *dn)
{
 struct pci_dn *pdn = dn ? PCI_DN(dn) : ((void*)0);
 struct device_node *parent;
 struct pci_dev *pdev;







 if (!pdn)
  return;

 WARN_ON(!list_empty(&pdn->child_list));
 list_del(&pdn->list);


 parent = of_get_parent(dn);
 if (parent)
  of_node_put(parent);






 pdev = pci_get_domain_bus_and_slot(pdn->phb->global_number,
   pdn->busno, pdn->devfn);
 if (pdev) {

  pci_dbg(pdev, "marked pdn (from %pOF) as dead\n", dn);
  pdn->flags |= PCI_DN_FLAG_DEAD;
 } else {
  dn->data = ((void*)0);
  kfree(pdn);
 }

 pci_dev_put(pdev);
}
