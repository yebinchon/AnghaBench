
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_scan_handler {int hotplug; } ;


 int acpi_scan_add_handler (struct acpi_scan_handler*) ;
 int acpi_sysfs_add_hotplug_profile (int *,char const*) ;

int acpi_scan_add_handler_with_hotplug(struct acpi_scan_handler *handler,
           const char *hotplug_profile_name)
{
 int error;

 error = acpi_scan_add_handler(handler);
 if (error)
  return error;

 acpi_sysfs_add_hotplug_profile(&handler->hotplug, hotplug_profile_name);
 return 0;
}
