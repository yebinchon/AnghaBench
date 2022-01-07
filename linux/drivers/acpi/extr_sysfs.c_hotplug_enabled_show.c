
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct acpi_hotplug_profile {int enabled; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct acpi_hotplug_profile* to_acpi_hotplug_profile (struct kobject*) ;

__attribute__((used)) static ssize_t hotplug_enabled_show(struct kobject *kobj,
        struct kobj_attribute *attr, char *buf)
{
 struct acpi_hotplug_profile *hotplug = to_acpi_hotplug_profile(kobj);

 return sprintf(buf, "%d\n", hotplug->enabled);
}
