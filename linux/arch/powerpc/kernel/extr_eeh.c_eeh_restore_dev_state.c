
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {int dummy; } ;
struct pci_dev {int dummy; } ;
struct eeh_dev {int dummy; } ;
struct TYPE_2__ {int (* restore_config ) (struct pci_dn*) ;} ;


 struct pci_dev* eeh_dev_to_pci_dev (struct eeh_dev*) ;
 struct pci_dn* eeh_dev_to_pdn (struct eeh_dev*) ;
 TYPE_1__* eeh_ops ;
 int pci_restore_state (struct pci_dev*) ;
 int stub1 (struct pci_dn*) ;

__attribute__((used)) static void eeh_restore_dev_state(struct eeh_dev *edev, void *userdata)
{
 struct pci_dn *pdn = eeh_dev_to_pdn(edev);
 struct pci_dev *pdev = eeh_dev_to_pci_dev(edev);
 struct pci_dev *dev = userdata;

 if (!pdev)
  return;


 if (pdn && eeh_ops->restore_config)
  eeh_ops->restore_config(pdn);


 if (pdev != dev)
  pci_restore_state(pdev);
}
