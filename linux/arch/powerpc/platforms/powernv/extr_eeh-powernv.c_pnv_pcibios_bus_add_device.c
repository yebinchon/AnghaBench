
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int dummy; } ;
struct pci_dev {int dev; } ;


 int EEH_FORCE_DISABLED ;
 int dev_dbg (int *,char*) ;
 int eeh_add_device_early (struct pci_dn*) ;
 int eeh_add_device_late (struct pci_dev*) ;
 scalar_t__ eeh_has_flag (int ) ;
 int eeh_sysfs_add_device (struct pci_dev*) ;
 struct pci_dn* pci_get_pdn (struct pci_dev*) ;

void pnv_pcibios_bus_add_device(struct pci_dev *pdev)
{
 struct pci_dn *pdn = pci_get_pdn(pdev);

 if (!pdn || eeh_has_flag(EEH_FORCE_DISABLED))
  return;

 dev_dbg(&pdev->dev, "EEH: Setting up device\n");
 eeh_add_device_early(pdn);
 eeh_add_device_late(pdev);
 eeh_sysfs_add_device(pdev);
}
