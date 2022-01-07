
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpodd {scalar_t__ powered_off; } ;
struct ata_device {int tdev; struct zpodd* zpodd; } ;


 int acpi_pm_set_device_wakeup (int *,int) ;

void zpodd_disable_run_wake(struct ata_device *dev)
{
 struct zpodd *zpodd = dev->zpodd;

 if (zpodd->powered_off)
  acpi_pm_set_device_wakeup(&dev->tdev, 0);
}
