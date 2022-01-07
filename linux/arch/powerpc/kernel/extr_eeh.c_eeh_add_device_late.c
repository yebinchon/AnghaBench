
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dn {int dummy; } ;
struct TYPE_4__ {struct eeh_dev* edev; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; int devfn; int bus; } ;
struct eeh_dev {struct pci_dev* pdev; int mode; } ;
struct TYPE_6__ {int (* probe ) (struct pci_dn*,int *) ;} ;


 int EEH_DEV_NO_HANDLER ;
 int EEH_DEV_SYSFS ;
 int EEH_PROBE_MODE_DEV ;
 int eeh_addr_cache_insert_dev (struct pci_dev*) ;
 int eeh_addr_cache_rmv_dev (struct pci_dev*) ;
 int eeh_edev_dbg (struct eeh_dev*,char*) ;
 scalar_t__ eeh_has_flag (int ) ;
 TYPE_3__* eeh_ops ;
 int eeh_rmv_from_parent_pe (struct eeh_dev*) ;
 int eeh_sysfs_remove_device (struct pci_dev*) ;
 struct pci_dn* pci_get_pdn_by_devfn (int ,int ) ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;
 int stub1 (struct pci_dn*,int *) ;

void eeh_add_device_late(struct pci_dev *dev)
{
 struct pci_dn *pdn;
 struct eeh_dev *edev;

 if (!dev)
  return;

 pdn = pci_get_pdn_by_devfn(dev->bus, dev->devfn);
 edev = pdn_to_eeh_dev(pdn);
 eeh_edev_dbg(edev, "Adding device\n");
 if (edev->pdev == dev) {
  eeh_edev_dbg(edev, "Device already referenced!\n");
  return;
 }







 if (edev->pdev) {
  eeh_rmv_from_parent_pe(edev);
  eeh_addr_cache_rmv_dev(edev->pdev);
  eeh_sysfs_remove_device(edev->pdev);
  edev->mode &= ~EEH_DEV_SYSFS;






  edev->mode |= EEH_DEV_NO_HANDLER;

  edev->pdev = ((void*)0);
  dev->dev.archdata.edev = ((void*)0);
 }

 if (eeh_has_flag(EEH_PROBE_MODE_DEV))
  eeh_ops->probe(pdn, ((void*)0));

 edev->pdev = dev;
 dev->dev.archdata.edev = edev;

 eeh_addr_cache_insert_dev(dev);
}
