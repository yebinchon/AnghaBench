
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int ata_pci_remove_one (struct pci_dev*) ;
 int pm_runtime_get_noresume (int *) ;

__attribute__((used)) static void ahci_remove_one(struct pci_dev *pdev)
{
 pm_runtime_get_noresume(&pdev->dev);
 ata_pci_remove_one(pdev);
}
