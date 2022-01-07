
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct acpi_hotplug_profile {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int acpi_scan_hotplug_enabled (struct acpi_hotplug_profile*,unsigned int) ;
 scalar_t__ kstrtouint (char const*,int,unsigned int*) ;
 struct acpi_hotplug_profile* to_acpi_hotplug_profile (struct kobject*) ;

__attribute__((used)) static ssize_t hotplug_enabled_store(struct kobject *kobj,
         struct kobj_attribute *attr,
         const char *buf, size_t size)
{
 struct acpi_hotplug_profile *hotplug = to_acpi_hotplug_profile(kobj);
 unsigned int val;

 if (kstrtouint(buf, 10, &val) || val > 1)
  return -EINVAL;

 acpi_scan_hotplug_enabled(hotplug, val);
 return size;
}
