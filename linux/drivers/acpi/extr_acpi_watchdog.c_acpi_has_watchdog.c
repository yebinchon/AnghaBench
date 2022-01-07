
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_watchdog_get_wdat () ;

bool acpi_has_watchdog(void)
{
 return !!acpi_watchdog_get_wdat();
}
