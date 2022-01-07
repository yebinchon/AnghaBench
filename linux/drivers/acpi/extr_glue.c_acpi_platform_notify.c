
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;




 int acpi_device_notify (struct device*) ;
 int acpi_device_notify_remove (struct device*) ;

int acpi_platform_notify(struct device *dev, enum kobject_action action)
{
 switch (action) {
 case 129:
  acpi_device_notify(dev);
  break;
 case 128:
  acpi_device_notify_remove(dev);
  break;
 default:
  break;
 }
 return 0;
}
