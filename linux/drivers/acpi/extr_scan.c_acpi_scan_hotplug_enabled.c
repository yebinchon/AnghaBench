
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hotplug_profile {int enabled; } ;


 int acpi_scan_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void acpi_scan_hotplug_enabled(struct acpi_hotplug_profile *hotplug, bool val)
{
 if (!!hotplug->enabled == !!val)
  return;

 mutex_lock(&acpi_scan_lock);

 hotplug->enabled = val;

 mutex_unlock(&acpi_scan_lock);
}
