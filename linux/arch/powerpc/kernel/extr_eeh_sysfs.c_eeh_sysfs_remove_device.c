
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sd; } ;
struct TYPE_4__ {TYPE_1__ kobj; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct eeh_dev {int mode; } ;


 int EEH_DEV_SYSFS ;
 int dev_attr_eeh_mode ;
 int dev_attr_eeh_pe_config_addr ;
 int dev_attr_eeh_pe_state ;
 int device_remove_file (TYPE_2__*,int *) ;
 int eeh_notify_resume_remove (struct pci_dev*) ;
 struct eeh_dev* pci_dev_to_eeh_dev (struct pci_dev*) ;

void eeh_sysfs_remove_device(struct pci_dev *pdev)
{
 struct eeh_dev *edev = pci_dev_to_eeh_dev(pdev);





 if (!pdev->dev.kobj.sd) {
  if (edev)
   edev->mode &= ~EEH_DEV_SYSFS;
  return;
 }

 device_remove_file(&pdev->dev, &dev_attr_eeh_mode);
 device_remove_file(&pdev->dev, &dev_attr_eeh_pe_config_addr);
 device_remove_file(&pdev->dev, &dev_attr_eeh_pe_state);

 eeh_notify_resume_remove(pdev);

 if (edev)
  edev->mode &= ~EEH_DEV_SYSFS;
}
