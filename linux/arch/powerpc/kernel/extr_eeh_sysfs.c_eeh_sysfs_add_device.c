
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct eeh_dev {int mode; } ;


 int EEH_DEV_SYSFS ;
 int dev_attr_eeh_mode ;
 int dev_attr_eeh_pe_config_addr ;
 int dev_attr_eeh_pe_state ;
 scalar_t__ device_create_file (int *,int *) ;
 int eeh_enabled () ;
 scalar_t__ eeh_notify_resume_add (struct pci_dev*) ;
 struct eeh_dev* pci_dev_to_eeh_dev (struct pci_dev*) ;
 int pr_warn (char*) ;

void eeh_sysfs_add_device(struct pci_dev *pdev)
{
 struct eeh_dev *edev = pci_dev_to_eeh_dev(pdev);
 int rc=0;

 if (!eeh_enabled())
  return;

 if (edev && (edev->mode & EEH_DEV_SYSFS))
  return;

 rc += device_create_file(&pdev->dev, &dev_attr_eeh_mode);
 rc += device_create_file(&pdev->dev, &dev_attr_eeh_pe_config_addr);
 rc += device_create_file(&pdev->dev, &dev_attr_eeh_pe_state);
 rc += eeh_notify_resume_add(pdev);

 if (rc)
  pr_warn("EEH: Unable to create sysfs entries\n");
 else if (edev)
  edev->mode |= EEH_DEV_SYSFS;
}
