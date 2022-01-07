
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int dummy; } ;
struct pci_controller {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 void* ERR_PTR (int ) ;
 struct pci_dn* pci_add_device_node_info (struct pci_controller*,struct device_node*) ;

__attribute__((used)) static void *add_pdn(struct device_node *dn, void *data)
{
 struct pci_controller *hose = data;
 struct pci_dn *pdn;

 pdn = pci_add_device_node_info(hose, dn);
 if (!pdn)
  return ERR_PTR(-ENOMEM);

 return ((void*)0);
}
