
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int __acpi_device_uevent_modalias (int ,struct kobj_uevent_env*) ;
 int to_acpi_device (struct device*) ;

__attribute__((used)) static int acpi_device_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 return __acpi_device_uevent_modalias(to_acpi_device(dev), env);
}
