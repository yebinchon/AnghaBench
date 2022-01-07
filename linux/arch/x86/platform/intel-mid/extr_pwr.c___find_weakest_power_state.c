
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mid_pwr_dev {scalar_t__ state; struct pci_dev* pdev; } ;
typedef scalar_t__ pci_power_t ;


 unsigned int LSS_MAX_SHARED_DEVS ;
 scalar_t__ PCI_D3hot ;
 int dev_WARN (int *,char*) ;

__attribute__((used)) static pci_power_t __find_weakest_power_state(struct mid_pwr_dev *lss,
           struct pci_dev *pdev,
           pci_power_t state)
{
 pci_power_t weakest = PCI_D3hot;
 unsigned int j;


 for (j = 0; j < LSS_MAX_SHARED_DEVS; j++) {
  if (lss[j].pdev == pdev || !lss[j].pdev)
   break;
 }


 if (j < LSS_MAX_SHARED_DEVS) {
  lss[j].pdev = pdev;
  lss[j].state = state;
 } else {
  dev_WARN(&pdev->dev, "No room for device in PWRMU LSS cache\n");
  weakest = state;
 }


 for (j = 0; j < LSS_MAX_SHARED_DEVS; j++) {
  if (lss[j].state < weakest)
   weakest = lss[j].state;
 }

 return weakest;
}
