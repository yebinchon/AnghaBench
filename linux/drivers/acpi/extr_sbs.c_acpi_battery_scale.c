
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {int dummy; } ;


 int acpi_battery_ipscale (struct acpi_battery*) ;
 scalar_t__ acpi_battery_mode (struct acpi_battery*) ;

__attribute__((used)) static inline int acpi_battery_scale(struct acpi_battery *battery)
{
 return (acpi_battery_mode(battery) ? 10 : 1) *
     acpi_battery_ipscale(battery);
}
