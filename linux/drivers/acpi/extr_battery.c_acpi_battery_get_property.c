
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct acpi_battery {int state; int cycle_count; int design_voltage; int voltage_now; int rate_now; int design_capacity; int full_charge_capacity; int capacity_now; int alarm; int serial_number; int oem_info; int model_number; int flags; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ACPI_BATTERY_ALARM_PRESENT ;
 int ACPI_BATTERY_STATE_CHARGING ;
 int ACPI_BATTERY_STATE_CRITICAL ;
 int ACPI_BATTERY_STATE_DISCHARGING ;
 int ACPI_BATTERY_VALUE_UNKNOWN ;
 int EINVAL ;
 int ENODEV ;
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_LOW ;
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int acpi_battery_get_state (struct acpi_battery*) ;
 int acpi_battery_handle_discharging (struct acpi_battery*) ;
 int acpi_battery_is_charged (struct acpi_battery*) ;
 int acpi_battery_present (struct acpi_battery*) ;
 int acpi_battery_technology (struct acpi_battery*) ;
 int test_bit (int ,int *) ;
 struct acpi_battery* to_acpi_battery (struct power_supply*) ;

__attribute__((used)) static int acpi_battery_get_property(struct power_supply *psy,
         enum power_supply_property psp,
         union power_supply_propval *val)
{
 int ret = 0;
 struct acpi_battery *battery = to_acpi_battery(psy);

 if (acpi_battery_present(battery)) {

  acpi_battery_get_state(battery);
 } else if (psp != 133)
  return -ENODEV;
 switch (psp) {
 case 131:
  if (battery->state & ACPI_BATTERY_STATE_DISCHARGING)
   val->intval = acpi_battery_handle_discharging(battery);
  else if (battery->state & ACPI_BATTERY_STATE_CHARGING)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (acpi_battery_is_charged(battery))
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
  break;
 case 133:
  val->intval = acpi_battery_present(battery);
  break;
 case 130:
  val->intval = acpi_battery_technology(battery);
  break;
 case 140:
  val->intval = battery->cycle_count;
  break;
 case 129:
  if (battery->design_voltage == ACPI_BATTERY_VALUE_UNKNOWN)
   ret = -ENODEV;
  else
   val->intval = battery->design_voltage * 1000;
  break;
 case 128:
  if (battery->voltage_now == ACPI_BATTERY_VALUE_UNKNOWN)
   ret = -ENODEV;
  else
   val->intval = battery->voltage_now * 1000;
  break;
 case 141:
 case 134:
  if (battery->rate_now == ACPI_BATTERY_VALUE_UNKNOWN)
   ret = -ENODEV;
  else
   val->intval = battery->rate_now * 1000;
  break;
 case 143:
 case 138:
  if (battery->design_capacity == ACPI_BATTERY_VALUE_UNKNOWN)
   ret = -ENODEV;
  else
   val->intval = battery->design_capacity * 1000;
  break;
 case 144:
 case 139:
  if (battery->full_charge_capacity == ACPI_BATTERY_VALUE_UNKNOWN)
   ret = -ENODEV;
  else
   val->intval = battery->full_charge_capacity * 1000;
  break;
 case 142:
 case 137:
  if (battery->capacity_now == ACPI_BATTERY_VALUE_UNKNOWN)
   ret = -ENODEV;
  else
   val->intval = battery->capacity_now * 1000;
  break;
 case 146:
  if (battery->capacity_now && battery->full_charge_capacity)
   val->intval = battery->capacity_now * 100/
     battery->full_charge_capacity;
  else
   val->intval = 0;
  break;
 case 145:
  if (battery->state & ACPI_BATTERY_STATE_CRITICAL)
   val->intval = POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
  else if (test_bit(ACPI_BATTERY_ALARM_PRESENT, &battery->flags) &&
   (battery->capacity_now <= battery->alarm))
   val->intval = POWER_SUPPLY_CAPACITY_LEVEL_LOW;
  else if (acpi_battery_is_charged(battery))
   val->intval = POWER_SUPPLY_CAPACITY_LEVEL_FULL;
  else
   val->intval = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
  break;
 case 135:
  val->strval = battery->model_number;
  break;
 case 136:
  val->strval = battery->oem_info;
  break;
 case 132:
  val->strval = battery->serial_number;
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
