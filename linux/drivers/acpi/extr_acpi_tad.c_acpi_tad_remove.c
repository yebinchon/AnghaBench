
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct platform_device {struct device dev; } ;
struct acpi_tad_driver_data {int capabilities; } ;


 int ACPI_TAD_AC_TIMER ;
 int ACPI_TAD_DC_TIMER ;
 int ACPI_TAD_DC_WAKE ;
 int acpi_tad_attr_group ;
 int acpi_tad_clear_status (struct device*,int ) ;
 int acpi_tad_dc_attr_group ;
 int acpi_tad_disable_timer (struct device*,int ) ;
 struct acpi_tad_driver_data* dev_get_drvdata (struct device*) ;
 int device_init_wakeup (struct device*,int) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int acpi_tad_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct acpi_tad_driver_data *dd = dev_get_drvdata(dev);

 device_init_wakeup(dev, 0);

 pm_runtime_get_sync(dev);

 if (dd->capabilities & ACPI_TAD_DC_WAKE)
  sysfs_remove_group(&dev->kobj, &acpi_tad_dc_attr_group);

 sysfs_remove_group(&dev->kobj, &acpi_tad_attr_group);

 acpi_tad_disable_timer(dev, ACPI_TAD_AC_TIMER);
 acpi_tad_clear_status(dev, ACPI_TAD_AC_TIMER);
 if (dd->capabilities & ACPI_TAD_DC_WAKE) {
  acpi_tad_disable_timer(dev, ACPI_TAD_DC_TIMER);
  acpi_tad_clear_status(dev, ACPI_TAD_DC_TIMER);
 }

 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);
 return 0;
}
