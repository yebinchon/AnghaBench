
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; struct bin_attribute** res_attr_wc; struct bin_attribute** res_attr; } ;
struct bin_attribute {int dummy; } ;


 int PCI_ROM_RESOURCE ;
 int kfree (struct bin_attribute*) ;
 int sysfs_remove_bin_file (int *,struct bin_attribute*) ;

void pci_remove_resource_files(struct pci_dev *pdev)
{
 int i;

 for (i = 0; i < PCI_ROM_RESOURCE; i++) {
  struct bin_attribute *res_attr;

  res_attr = pdev->res_attr[i];
  if (res_attr) {
   sysfs_remove_bin_file(&pdev->dev.kobj, res_attr);
   kfree(res_attr);
  }

  res_attr = pdev->res_attr_wc[i];
  if (res_attr) {
   sysfs_remove_bin_file(&pdev->dev.kobj, res_attr);
   kfree(res_attr);
  }
 }
}
