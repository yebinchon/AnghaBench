
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {scalar_t__ pcie_error_reporting_is_enabled; scalar_t__* mem_map; } ;
struct pci_dev {int dev; } ;
typedef int pm_message_t ;


 int EIO ;
 int SKD_MAX_BARS ;
 int dev_err (int *,char*) ;
 int iounmap (scalar_t__) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct skd_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int skd_release_irq (struct skd_device*) ;
 int skd_stop_device (struct skd_device*) ;

__attribute__((used)) static int skd_pci_suspend(struct pci_dev *pdev, pm_message_t state)
{
 int i;
 struct skd_device *skdev;

 skdev = pci_get_drvdata(pdev);
 if (!skdev) {
  dev_err(&pdev->dev, "no device data for PCI\n");
  return -EIO;
 }

 skd_stop_device(skdev);

 skd_release_irq(skdev);

 for (i = 0; i < SKD_MAX_BARS; i++)
  if (skdev->mem_map[i])
   iounmap(skdev->mem_map[i]);

 if (skdev->pcie_error_reporting_is_enabled)
  pci_disable_pcie_error_reporting(pdev);

 pci_release_regions(pdev);
 pci_save_state(pdev);
 pci_disable_device(pdev);
 pci_set_power_state(pdev, pci_choose_state(pdev, state));
 return 0;
}
