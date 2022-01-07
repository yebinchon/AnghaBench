
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; } ;
struct TYPE_2__ {int state; } ;


 int EEH_PE_CFG_RESTRICTED ;
 struct pci_dev* eeh_dev_to_pci_dev (struct eeh_dev*) ;
 int pci_save_state (struct pci_dev*) ;

__attribute__((used)) static void eeh_dev_save_state(struct eeh_dev *edev, void *userdata)
{
 struct pci_dev *pdev;

 if (!edev)
  return;
 if (edev->pe && (edev->pe->state & EEH_PE_CFG_RESTRICTED))
  return;

 pdev = eeh_dev_to_pci_dev(edev);
 if (!pdev)
  return;

 pci_save_state(pdev);
}
