
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery_hook {int dummy; } ;


 int __battery_hook_unregister (struct acpi_battery_hook*,int) ;

void battery_hook_unregister(struct acpi_battery_hook *hook)
{
 __battery_hook_unregister(hook, 1);
}
