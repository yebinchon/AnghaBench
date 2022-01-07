
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpodd {int powered_off; } ;
struct ata_device {int tdev; int sdev; struct zpodd* zpodd; } ;


 int acpi_pm_set_device_wakeup (int *,int) ;
 int sdev_disable_disk_events (int ) ;

void zpodd_enable_run_wake(struct ata_device *dev)
{
 struct zpodd *zpodd = dev->zpodd;

 sdev_disable_disk_events(dev->sdev);

 zpodd->powered_off = 1;
 acpi_pm_set_device_wakeup(&dev->tdev, 1);
}
