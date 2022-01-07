
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct acpi_fan {TYPE_3__* cdev; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_2__ device; } ;


 struct acpi_fan* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_link (int *,char*) ;
 int thermal_cooling_device_unregister (TYPE_3__*) ;

__attribute__((used)) static int acpi_fan_remove(struct platform_device *pdev)
{
 struct acpi_fan *fan = platform_get_drvdata(pdev);

 sysfs_remove_link(&pdev->dev.kobj, "thermal_cooling");
 sysfs_remove_link(&fan->cdev->device.kobj, "device");
 thermal_cooling_device_unregister(fan->cdev);

 return 0;
}
