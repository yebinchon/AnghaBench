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
struct acpi_buffer {int /*<<< orphan*/  pointer; } ;
struct acpi_battery {int full_charge_capacity; int design_capacity; int design_voltage; int design_capacity_warning; int capacity_now; int /*<<< orphan*/  flags; scalar_t__ power_unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BATTERY_QUIRK_DEGRADED_FULL_CHARGE ; 
 int /*<<< orphan*/  ACPI_BATTERY_QUIRK_PERCENTAGE_CAPACITY ; 
 int /*<<< orphan*/  ACPI_BATTERY_QUIRK_THINKPAD_MAH ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int EFAULT ; 
 scalar_t__ battery_bix_broken_package ; 
 scalar_t__ extended_info_offsets ; 
 int FUNC1 (struct acpi_battery*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ info_offsets ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const int use_bix,
			 struct acpi_battery *battery,
			 const struct acpi_buffer *buffer)
{
	int result = -EFAULT;

	if (use_bix && battery_bix_broken_package)
		result = FUNC1(battery, buffer->pointer,
				extended_info_offsets + 1,
				FUNC0(extended_info_offsets) - 1);
	else if (use_bix)
		result = FUNC1(battery, buffer->pointer,
				extended_info_offsets,
				FUNC0(extended_info_offsets));
	else
		result = FUNC1(battery, buffer->pointer,
				info_offsets, FUNC0(info_offsets));
	if (FUNC2(ACPI_BATTERY_QUIRK_PERCENTAGE_CAPACITY, &battery->flags))
		battery->full_charge_capacity = battery->design_capacity;
	if (FUNC2(ACPI_BATTERY_QUIRK_THINKPAD_MAH, &battery->flags) &&
	    battery->power_unit && battery->design_voltage) {
		battery->design_capacity = battery->design_capacity *
		    10000 / battery->design_voltage;
		battery->full_charge_capacity = battery->full_charge_capacity *
		    10000 / battery->design_voltage;
		battery->design_capacity_warning =
		    battery->design_capacity_warning *
		    10000 / battery->design_voltage;
		/* Curiously, design_capacity_low, unlike the rest of them,
		   is correct.  */
		/* capacity_granularity_* equal 1 on the systems tested, so
		   it's impossible to tell if they would need an adjustment
		   or not if their values were higher.  */
	}
	if (FUNC2(ACPI_BATTERY_QUIRK_DEGRADED_FULL_CHARGE, &battery->flags) &&
	    battery->capacity_now > battery->full_charge_capacity)
		battery->capacity_now = battery->full_charge_capacity;

	return result;
}