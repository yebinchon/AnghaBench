
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {struct device_node* dn; int controller_ops; } ;
struct device_node {int dummy; } ;


 scalar_t__ SPIDER_PCI_REG_BASE ;
 int cell_pci_controller_ops ;
 int iowa_register_bus (struct pci_controller*,int *,int *,void*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int of_node_name_eq (struct device_node*,char*) ;
 int rtas_setup_phb (struct pci_controller*) ;
 int spiderpci_iowa_init ;
 int spiderpci_ops ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int cell_setup_phb(struct pci_controller *phb)
{
 const char *model;
 struct device_node *np;

 int rc = rtas_setup_phb(phb);
 if (rc)
  return rc;

 phb->controller_ops = cell_pci_controller_ops;

 np = phb->dn;
 model = of_get_property(np, "model", ((void*)0));
 if (model == ((void*)0) || !of_node_name_eq(np, "pci"))
  return 0;


 if (strcmp(model, "Spider"))
  return 0;

 iowa_register_bus(phb, &spiderpci_ops, &spiderpci_iowa_init,
      (void *)SPIDER_PCI_REG_BASE);
 return 0;
}
