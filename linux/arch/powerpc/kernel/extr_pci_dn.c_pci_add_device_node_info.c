
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dn {int busno; int devfn; int vendor_id; int device_id; int class_code; TYPE_1__* parent; int list; int child_list; int pci_ext_config_space; int pe_number; struct pci_controller* phb; } ;
struct pci_controller {int dummy; } ;
struct eeh_dev {int dummy; } ;
struct device_node {struct pci_dn* data; } ;
typedef int __be32 ;
struct TYPE_2__ {int child_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IODA_INVALID_PE ;
 TYPE_1__* PCI_DN (struct device_node*) ;
 struct eeh_dev* eeh_dev_init (struct pci_dn*) ;
 int kfree (struct pci_dn*) ;
 struct pci_dn* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_read_number (int const*,int) ;

struct pci_dn *pci_add_device_node_info(struct pci_controller *hose,
     struct device_node *dn)
{
 const __be32 *type = of_get_property(dn, "ibm,pci-config-space-type", ((void*)0));
 const __be32 *regs;
 struct device_node *parent;
 struct pci_dn *pdn;




 pdn = kzalloc(sizeof(*pdn), GFP_KERNEL);
 if (pdn == ((void*)0))
  return ((void*)0);
 dn->data = pdn;
 pdn->phb = hose;
 pdn->pe_number = IODA_INVALID_PE;
 regs = of_get_property(dn, "reg", ((void*)0));
 if (regs) {
  u32 addr = of_read_number(regs, 1);


  pdn->busno = (addr >> 16) & 0xff;
  pdn->devfn = (addr >> 8) & 0xff;
 }


 regs = of_get_property(dn, "vendor-id", ((void*)0));
 pdn->vendor_id = regs ? of_read_number(regs, 1) : 0;
 regs = of_get_property(dn, "device-id", ((void*)0));
 pdn->device_id = regs ? of_read_number(regs, 1) : 0;
 regs = of_get_property(dn, "class-code", ((void*)0));
 pdn->class_code = regs ? of_read_number(regs, 1) : 0;


 pdn->pci_ext_config_space = (type && of_read_number(type, 1) == 1);
 INIT_LIST_HEAD(&pdn->child_list);
 INIT_LIST_HEAD(&pdn->list);
 parent = of_get_parent(dn);
 pdn->parent = parent ? PCI_DN(parent) : ((void*)0);
 if (pdn->parent)
  list_add_tail(&pdn->list, &pdn->parent->child_list);

 return pdn;
}
