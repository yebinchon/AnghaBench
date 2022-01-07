
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {scalar_t__ state; int entry; int lock; } ;


 scalar_t__ ZPCI_FN_STATE_CONFIGURED ;
 scalar_t__ ZPCI_FN_STATE_ONLINE ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zpci_alloc_domain (struct zpci_dev*) ;
 int zpci_destroy_iommu (struct zpci_dev*) ;
 int zpci_disable_device (struct zpci_dev*) ;
 int zpci_enable_device (struct zpci_dev*) ;
 int zpci_free_domain (struct zpci_dev*) ;
 int zpci_init_iommu (struct zpci_dev*) ;
 int zpci_init_slot (struct zpci_dev*) ;
 int zpci_list ;
 int zpci_list_lock ;
 int zpci_scan_bus (struct zpci_dev*) ;

int zpci_create_device(struct zpci_dev *zdev)
{
 int rc;

 rc = zpci_alloc_domain(zdev);
 if (rc)
  goto out;

 rc = zpci_init_iommu(zdev);
 if (rc)
  goto out_free;

 mutex_init(&zdev->lock);
 if (zdev->state == ZPCI_FN_STATE_CONFIGURED) {
  rc = zpci_enable_device(zdev);
  if (rc)
   goto out_destroy_iommu;
 }
 rc = zpci_scan_bus(zdev);
 if (rc)
  goto out_disable;

 spin_lock(&zpci_list_lock);
 list_add_tail(&zdev->entry, &zpci_list);
 spin_unlock(&zpci_list_lock);

 zpci_init_slot(zdev);

 return 0;

out_disable:
 if (zdev->state == ZPCI_FN_STATE_ONLINE)
  zpci_disable_device(zdev);
out_destroy_iommu:
 zpci_destroy_iommu(zdev);
out_free:
 zpci_free_domain(zdev);
out:
 return rc;
}
