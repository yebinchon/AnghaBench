
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mid_pwr {scalar_t__ available; } ;
typedef int pci_power_t ;


 int dev_vdbg (int *,char*,int) ;
 int mid_pwr_set_power_state (struct mid_pwr*,struct pci_dev*,int ) ;
 struct mid_pwr* midpwr ;
 int might_sleep () ;

int intel_mid_pci_set_power_state(struct pci_dev *pdev, pci_power_t state)
{
 struct mid_pwr *pwr = midpwr;
 int ret = 0;

 might_sleep();

 if (pwr && pwr->available)
  ret = mid_pwr_set_power_state(pwr, pdev, state);
 dev_vdbg(&pdev->dev, "set_power_state() returns %d\n", ret);

 return 0;
}
