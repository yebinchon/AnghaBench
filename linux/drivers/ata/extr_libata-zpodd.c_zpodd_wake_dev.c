
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct zpodd {int from_notify; } ;
struct device {int dummy; } ;
struct ata_device {TYPE_1__* sdev; struct zpodd* zpodd; } ;
typedef int acpi_handle ;
struct TYPE_2__ {struct device sdev_gendev; } ;


 scalar_t__ ACPI_NOTIFY_DEVICE_WAKE ;
 int pm_runtime_resume (struct device*) ;
 scalar_t__ pm_runtime_suspended (struct device*) ;

__attribute__((used)) static void zpodd_wake_dev(acpi_handle handle, u32 event, void *context)
{
 struct ata_device *ata_dev = context;
 struct zpodd *zpodd = ata_dev->zpodd;
 struct device *dev = &ata_dev->sdev->sdev_gendev;

 if (event == ACPI_NOTIFY_DEVICE_WAKE && pm_runtime_suspended(dev)) {
  zpodd->from_notify = 1;
  pm_runtime_resume(dev);
 }
}
