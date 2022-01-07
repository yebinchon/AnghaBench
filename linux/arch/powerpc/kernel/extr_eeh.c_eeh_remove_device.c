
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * edev; } ;
struct TYPE_6__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_3__ dev; } ;
struct eeh_dev {int in_error; int mode; TYPE_2__* pe; int * pdev; } ;
struct TYPE_5__ {int state; } ;


 int EEH_DEV_DISCONNECTED ;
 int EEH_DEV_NO_HANDLER ;
 int EEH_DEV_SYSFS ;
 int EEH_PE_KEEP ;
 int dev_dbg (TYPE_3__*,char*) ;
 int eeh_addr_cache_rmv_dev (struct pci_dev*) ;
 int eeh_enabled () ;
 int eeh_rmv_from_parent_pe (struct eeh_dev*) ;
 int eeh_sysfs_remove_device (struct pci_dev*) ;
 struct eeh_dev* pci_dev_to_eeh_dev (struct pci_dev*) ;

void eeh_remove_device(struct pci_dev *dev)
{
 struct eeh_dev *edev;

 if (!dev || !eeh_enabled())
  return;
 edev = pci_dev_to_eeh_dev(dev);


 dev_dbg(&dev->dev, "EEH: Removing device\n");

 if (!edev || !edev->pdev || !edev->pe) {
  dev_dbg(&dev->dev, "EEH: Device not referenced!\n");
  return;
 }







 edev->pdev = ((void*)0);







 edev->in_error = 0;
 dev->dev.archdata.edev = ((void*)0);
 if (!(edev->pe->state & EEH_PE_KEEP))
  eeh_rmv_from_parent_pe(edev);
 else
  edev->mode |= EEH_DEV_DISCONNECTED;







 edev->mode |= EEH_DEV_NO_HANDLER;

 eeh_addr_cache_rmv_dev(dev);
 eeh_sysfs_remove_device(dev);
 edev->mode &= ~EEH_DEV_SYSFS;
}
