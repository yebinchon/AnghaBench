
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int __acpi_device_uevent_modalias (int ,struct kobj_uevent_env*) ;
 int acpi_companion_match (struct device*) ;

int acpi_device_uevent_modalias(struct device *dev, struct kobj_uevent_env *env)
{
 return __acpi_device_uevent_modalias(acpi_companion_match(dev), env);
}
