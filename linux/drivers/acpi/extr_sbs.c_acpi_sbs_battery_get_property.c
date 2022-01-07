
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct acpi_battery {int present; int cycle_count; int design_voltage; int voltage_now; int state_of_charge; int design_capacity; int full_charge_capacity; int capacity_now; int manufacturer_name; int device_name; int temp_now; int rate_avg; int rate_now; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int ENODEV ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int abs (int ) ;
 int acpi_battery_get_state (struct acpi_battery*) ;
 int acpi_battery_ipscale (struct acpi_battery*) ;
 int acpi_battery_mode (struct acpi_battery*) ;
 int acpi_battery_scale (struct acpi_battery*) ;
 int acpi_battery_technology (struct acpi_battery*) ;
 int acpi_battery_vscale (struct acpi_battery*) ;
 struct acpi_battery* to_acpi_battery (struct power_supply*) ;

__attribute__((used)) static int acpi_sbs_battery_get_property(struct power_supply *psy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 struct acpi_battery *battery = to_acpi_battery(psy);

 if ((!battery->present) && psp != 133)
  return -ENODEV;

 acpi_battery_get_state(battery);
 switch (psp) {
 case 132:
  if (battery->rate_now < 0)
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (battery->rate_now > 0)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_FULL;
  break;
 case 133:
  val->intval = battery->present;
  break;
 case 131:
  val->intval = acpi_battery_technology(battery);
  break;
 case 141:
  val->intval = battery->cycle_count;
  break;
 case 129:
  val->intval = battery->design_voltage *
   acpi_battery_vscale(battery) * 1000;
  break;
 case 128:
  val->intval = battery->voltage_now *
    acpi_battery_vscale(battery) * 1000;
  break;
 case 142:
 case 134:
  val->intval = abs(battery->rate_now) *
    acpi_battery_ipscale(battery) * 1000;
  val->intval *= (acpi_battery_mode(battery)) ?
    (battery->voltage_now *
    acpi_battery_vscale(battery) / 1000) : 1;
  break;
 case 143:
 case 135:
  val->intval = abs(battery->rate_avg) *
    acpi_battery_ipscale(battery) * 1000;
  val->intval *= (acpi_battery_mode(battery)) ?
    (battery->voltage_now *
    acpi_battery_vscale(battery) / 1000) : 1;
  break;
 case 147:
  val->intval = battery->state_of_charge;
  break;
 case 145:
 case 139:
  val->intval = battery->design_capacity *
   acpi_battery_scale(battery) * 1000;
  break;
 case 146:
 case 140:
  val->intval = battery->full_charge_capacity *
   acpi_battery_scale(battery) * 1000;
  break;
 case 144:
 case 138:
  val->intval = battery->capacity_now *
    acpi_battery_scale(battery) * 1000;
  break;
 case 130:
  val->intval = battery->temp_now - 2730;
  break;
 case 136:
  val->strval = battery->device_name;
  break;
 case 137:
  val->strval = battery->manufacturer_name;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
