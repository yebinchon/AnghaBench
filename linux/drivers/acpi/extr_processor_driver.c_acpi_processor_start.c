
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int ENODEV ;
 int __acpi_processor_start (struct acpi_device*) ;
 int cpu_hotplug_disable () ;
 int cpu_hotplug_enable () ;

__attribute__((used)) static int acpi_processor_start(struct device *dev)
{
 struct acpi_device *device = ACPI_COMPANION(dev);
 int ret;

 if (!device)
  return -ENODEV;


 cpu_hotplug_disable();
 ret = __acpi_processor_start(device);
 cpu_hotplug_enable();
 return ret;
}
