
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {scalar_t__ full_charge_capacity; scalar_t__ design_capacity; } ;



__attribute__((used)) static bool acpi_battery_is_degraded(struct acpi_battery *battery)
{
 return battery->full_charge_capacity && battery->design_capacity &&
  battery->full_charge_capacity < battery->design_capacity;
}
