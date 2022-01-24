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
union power_supply_propval {int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct acpi_ac {int /*<<< orphan*/  state; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  POWER_SUPPLY_PROP_ONLINE 128 
 scalar_t__ FUNC0 (struct acpi_ac*) ; 
 struct acpi_ac* FUNC1 (struct power_supply*) ; 

__attribute__((used)) static int FUNC2(struct power_supply *psy,
			   enum power_supply_property psp,
			   union power_supply_propval *val)
{
	struct acpi_ac *ac = FUNC1(psy);

	if (!ac)
		return -ENODEV;

	if (FUNC0(ac))
		return -ENODEV;

	switch (psp) {
	case POWER_SUPPLY_PROP_ONLINE:
		val->intval = ac->state;
		break;
	default:
		return -EINVAL;
	}
	return 0;
}