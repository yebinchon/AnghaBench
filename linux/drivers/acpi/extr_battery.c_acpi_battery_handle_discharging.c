
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {scalar_t__ rate_now; } ;


 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 scalar_t__ battery_ac_is_broken ;
 scalar_t__ power_supply_is_system_supplied () ;

__attribute__((used)) static int acpi_battery_handle_discharging(struct acpi_battery *battery)
{





 if ((battery_ac_is_broken || power_supply_is_system_supplied()) &&
     battery->rate_now == 0)
  return POWER_SUPPLY_STATUS_NOT_CHARGING;

 return POWER_SUPPLY_STATUS_DISCHARGING;
}
