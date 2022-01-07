
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {scalar_t__ state; scalar_t__ capacity_now; scalar_t__ full_charge_capacity; scalar_t__ design_capacity; } ;


 scalar_t__ ACPI_BATTERY_VALUE_UNKNOWN ;

__attribute__((used)) static int acpi_battery_is_charged(struct acpi_battery *battery)
{

 if (battery->state != 0)
  return 0;


 if (battery->capacity_now == ACPI_BATTERY_VALUE_UNKNOWN ||
     battery->capacity_now == 0)
  return 0;


 if (battery->full_charge_capacity == battery->capacity_now)
  return 1;


 if (battery->design_capacity == battery->capacity_now)
  return 1;


 return 0;
}
