
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct platform_device {struct device dev; } ;
struct acpi_tad_driver_data {unsigned long long capabilities; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 unsigned long long ACPI_TAD_AC_WAKE ;
 unsigned long long ACPI_TAD_DC_WAKE ;
 unsigned long long ACPI_TAD_RT ;
 int DPM_FLAG_LEAVE_SUSPENDED ;
 int DPM_FLAG_SMART_SUSPEND ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_has_method (int ,char*) ;
 int acpi_tad_attr_group ;
 int acpi_tad_dc_attr_group ;
 int acpi_tad_remove (struct platform_device*) ;
 int acpi_tad_time_attr_group ;
 int dev_info (struct device*,char*) ;
 int dev_pm_set_driver_flags (struct device*,int) ;
 int dev_set_drvdata (struct device*,struct acpi_tad_driver_data*) ;
 int device_init_wakeup (struct device*,int) ;
 struct acpi_tad_driver_data* devm_kzalloc (struct device*,int,int ) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_suspend (struct device*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int acpi_tad_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 acpi_handle handle = ACPI_HANDLE(dev);
 struct acpi_tad_driver_data *dd;
 acpi_status status;
 unsigned long long caps;
 int ret;





 status = acpi_evaluate_integer(handle, "_GCP", ((void*)0), &caps);
 if (ACPI_FAILURE(status)) {
  dev_info(dev, "Unable to get capabilities\n");
  return -ENODEV;
 }

 if (!(caps & ACPI_TAD_AC_WAKE)) {
  dev_info(dev, "Unsupported capabilities\n");
  return -ENODEV;
 }

 if (!acpi_has_method(handle, "_PRW")) {
  dev_info(dev, "Missing _PRW\n");
  return -ENODEV;
 }

 dd = devm_kzalloc(dev, sizeof(*dd), GFP_KERNEL);
 if (!dd)
  return -ENOMEM;

 dd->capabilities = caps;
 dev_set_drvdata(dev, dd);







 device_init_wakeup(dev, 1);
 dev_pm_set_driver_flags(dev, DPM_FLAG_SMART_SUSPEND |
         DPM_FLAG_LEAVE_SUSPENDED);




 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);
 pm_runtime_suspend(dev);

 ret = sysfs_create_group(&dev->kobj, &acpi_tad_attr_group);
 if (ret)
  goto fail;

 if (caps & ACPI_TAD_DC_WAKE) {
  ret = sysfs_create_group(&dev->kobj, &acpi_tad_dc_attr_group);
  if (ret)
   goto fail;
 }

 if (caps & ACPI_TAD_RT) {
  ret = sysfs_create_group(&dev->kobj, &acpi_tad_time_attr_group);
  if (ret)
   goto fail;
 }

 return 0;

fail:
 acpi_tad_remove(pdev);
 return ret;
}
