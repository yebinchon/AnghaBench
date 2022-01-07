
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {struct pci_dn* parent; } ;
struct eeh_pe {int dummy; } ;
struct eeh_dev {struct eeh_pe* pe; scalar_t__ physfn; } ;


 struct pci_dn* eeh_dev_to_pdn (struct eeh_dev*) ;
 struct pci_dn* pci_get_pdn (scalar_t__) ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;

__attribute__((used)) static struct eeh_pe *eeh_pe_get_parent(struct eeh_dev *edev)
{
 struct eeh_dev *parent;
 struct pci_dn *pdn = eeh_dev_to_pdn(edev);






 if (edev->physfn)
  pdn = pci_get_pdn(edev->physfn);
 else
  pdn = pdn ? pdn->parent : ((void*)0);
 while (pdn) {

  parent = pdn_to_eeh_dev(pdn);
  if (!parent)
   return ((void*)0);

  if (parent->pe)
   return parent->pe;

  pdn = pdn->parent;
 }

 return ((void*)0);
}
