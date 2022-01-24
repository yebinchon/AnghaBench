#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
union power_supply_propval {int intval; int /*<<< orphan*/  strval; } ;
struct power_supply {int dummy; } ;
struct acpi_battery {int present; int cycle_count; int design_voltage; int voltage_now; int state_of_charge; int design_capacity; int full_charge_capacity; int capacity_now; int /*<<< orphan*/  manufacturer_name; int /*<<< orphan*/  device_name; int /*<<< orphan*/  temp_now; int /*<<< orphan*/  rate_avg; int /*<<< orphan*/  rate_now; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  POWER_SUPPLY_PROP_CAPACITY 147 
#define  POWER_SUPPLY_PROP_CHARGE_FULL 146 
#define  POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN 145 
#define  POWER_SUPPLY_PROP_CHARGE_NOW 144 
#define  POWER_SUPPLY_PROP_CURRENT_AVG 143 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 142 
#define  POWER_SUPPLY_PROP_CYCLE_COUNT 141 
#define  POWER_SUPPLY_PROP_ENERGY_FULL 140 
#define  POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN 139 
#define  POWER_SUPPLY_PROP_ENERGY_NOW 138 
#define  POWER_SUPPLY_PROP_MANUFACTURER 137 
#define  POWER_SUPPLY_PROP_MODEL_NAME 136 
#define  POWER_SUPPLY_PROP_POWER_AVG 135 
#define  POWER_SUPPLY_PROP_POWER_NOW 134 
#define  POWER_SUPPLY_PROP_PRESENT 133 
#define  POWER_SUPPLY_PROP_STATUS 132 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 131 
#define  POWER_SUPPLY_PROP_TEMP 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_battery*) ; 
 int FUNC2 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_battery*) ; 
 int FUNC4 (struct acpi_battery*) ; 
 int FUNC5 (struct acpi_battery*) ; 
 int FUNC6 (struct acpi_battery*) ; 
 struct acpi_battery* FUNC7 (struct power_supply*) ; 

__attribute__((used)) static int FUNC8(struct power_supply *psy,
					 enum power_supply_property psp,
					 union power_supply_propval *val)
{
	struct acpi_battery *battery = FUNC7(psy);

	if ((!battery->present) && psp != POWER_SUPPLY_PROP_PRESENT)
		return -ENODEV;

	FUNC1(battery);
	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		if (battery->rate_now < 0)
			val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
		else if (battery->rate_now > 0)
			val->intval = POWER_SUPPLY_STATUS_CHARGING;
		else
			val->intval = POWER_SUPPLY_STATUS_FULL;
		break;
	case POWER_SUPPLY_PROP_PRESENT:
		val->intval = battery->present;
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = FUNC5(battery);
		break;
	case POWER_SUPPLY_PROP_CYCLE_COUNT:
		val->intval = battery->cycle_count;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN:
		val->intval = battery->design_voltage *
			FUNC6(battery) * 1000;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		val->intval = battery->voltage_now *
				FUNC6(battery) * 1000;
		break;
	case POWER_SUPPLY_PROP_CURRENT_NOW:
	case POWER_SUPPLY_PROP_POWER_NOW:
		val->intval = FUNC0(battery->rate_now) *
				FUNC2(battery) * 1000;
		val->intval *= (FUNC3(battery)) ?
				(battery->voltage_now *
				FUNC6(battery) / 1000) : 1;
		break;
	case POWER_SUPPLY_PROP_CURRENT_AVG:
	case POWER_SUPPLY_PROP_POWER_AVG:
		val->intval = FUNC0(battery->rate_avg) *
				FUNC2(battery) * 1000;
		val->intval *= (FUNC3(battery)) ?
				(battery->voltage_now *
				FUNC6(battery) / 1000) : 1;
		break;
	case POWER_SUPPLY_PROP_CAPACITY:
		val->intval = battery->state_of_charge;
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN:
	case POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN:
		val->intval = battery->design_capacity *
			FUNC4(battery) * 1000;
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL:
	case POWER_SUPPLY_PROP_ENERGY_FULL:
		val->intval = battery->full_charge_capacity *
			FUNC4(battery) * 1000;
		break;
	case POWER_SUPPLY_PROP_CHARGE_NOW:
	case POWER_SUPPLY_PROP_ENERGY_NOW:
		val->intval = battery->capacity_now *
				FUNC4(battery) * 1000;
		break;
	case POWER_SUPPLY_PROP_TEMP:
		val->intval = battery->temp_now - 2730;	// dK -> dC
		break;
	case POWER_SUPPLY_PROP_MODEL_NAME:
		val->strval = battery->device_name;
		break;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = battery->manufacturer_name;
		break;
	default:
		return -EINVAL;
	}
	return 0;
}