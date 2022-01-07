
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int busno; int devfn; int phb; struct eeh_dev* edev; } ;
struct eeh_dev {int bdfn; int controller; struct pci_dn* pdn; } ;


 int GFP_KERNEL ;
 struct eeh_dev* kzalloc (int,int ) ;

struct eeh_dev *eeh_dev_init(struct pci_dn *pdn)
{
 struct eeh_dev *edev;


 edev = kzalloc(sizeof(*edev), GFP_KERNEL);
 if (!edev)
  return ((void*)0);


 pdn->edev = edev;
 edev->pdn = pdn;
 edev->bdfn = (pdn->busno << 8) | pdn->devfn;
 edev->controller = pdn->phb;

 return edev;
}
