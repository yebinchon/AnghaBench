
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {int dummy; } ;
struct eeh_dev {int mode; int * config_space; } ;
struct TYPE_2__ {int (* read_config ) (struct pci_dn*,int,int,int *) ;} ;


 int EEH_DEV_BRIDGE ;
 int PCI_COMMAND_MASTER ;
 struct pci_dn* eeh_dev_to_pdn (struct eeh_dev*) ;
 TYPE_1__* eeh_ops ;
 int stub1 (struct pci_dn*,int,int,int *) ;

void eeh_save_bars(struct eeh_dev *edev)
{
 struct pci_dn *pdn;
 int i;

 pdn = eeh_dev_to_pdn(edev);
 if (!pdn)
  return;

 for (i = 0; i < 16; i++)
  eeh_ops->read_config(pdn, i * 4, 4, &edev->config_space[i]);







 if (edev->mode & EEH_DEV_BRIDGE)
  edev->config_space[1] |= PCI_COMMAND_MASTER;
}
