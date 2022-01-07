
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 struct acpi_device* ACPI_COMPANION (TYPE_1__*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int dptf_power_attribute_group ;
 int platform_set_drvdata (struct platform_device*,struct acpi_device*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int dptf_power_add(struct platform_device *pdev)
{
 struct acpi_device *acpi_dev;
 acpi_status status;
 unsigned long long ptype;
 int result;

 acpi_dev = ACPI_COMPANION(&(pdev->dev));
 if (!acpi_dev)
  return -ENODEV;

 status = acpi_evaluate_integer(acpi_dev->handle, "PTYP", ((void*)0), &ptype);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 if (ptype != 0x11)
  return -ENODEV;

 result = sysfs_create_group(&pdev->dev.kobj,
        &dptf_power_attribute_group);
 if (result)
  return result;

 platform_set_drvdata(pdev, acpi_dev);

 return 0;
}
