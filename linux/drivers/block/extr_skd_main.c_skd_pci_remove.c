
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {scalar_t__ pcie_error_reporting_is_enabled; scalar_t__* mem_map; } ;
struct pci_dev {int dev; } ;


 int SKD_MAX_BARS ;
 int dev_err (int *,char*) ;
 int iounmap (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct skd_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int skd_destruct (struct skd_device*) ;
 int skd_release_irq (struct skd_device*) ;
 int skd_stop_device (struct skd_device*) ;

__attribute__((used)) static void skd_pci_remove(struct pci_dev *pdev)
{
 int i;
 struct skd_device *skdev;

 skdev = pci_get_drvdata(pdev);
 if (!skdev) {
  dev_err(&pdev->dev, "no device data for PCI\n");
  return;
 }
 skd_stop_device(skdev);
 skd_release_irq(skdev);

 for (i = 0; i < SKD_MAX_BARS; i++)
  if (skdev->mem_map[i])
   iounmap(skdev->mem_map[i]);

 if (skdev->pcie_error_reporting_is_enabled)
  pci_disable_pcie_error_reporting(pdev);

 skd_destruct(skdev);

 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));

 return;
}
