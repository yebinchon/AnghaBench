#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct acpi_battery {int present; int id; scalar_t__ update_time; TYPE_1__* sbs; } ;
struct TYPE_2__ {int /*<<< orphan*/  hc; scalar_t__ manager_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SBS_MANAGER ; 
 int /*<<< orphan*/  SMBUS_READ_WORD ; 
 int /*<<< orphan*/  SMBUS_WRITE_WORD ; 
 int FUNC0 (struct acpi_battery*) ; 
 int FUNC1 (struct acpi_battery*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct acpi_battery *battery)
{
	int result = 0, saved_present = battery->present;
	u16 state;

	if (battery->sbs->manager_present) {
		result = FUNC2(battery->sbs->hc, SMBUS_READ_WORD,
				ACPI_SBS_MANAGER, 0x01, (u8 *)&state);
		if (!result)
			battery->present = state & (1 << battery->id);
		state &= 0x0fff;
		state |= 1 << (battery->id + 12);
		FUNC3(battery->sbs->hc, SMBUS_WRITE_WORD,
				  ACPI_SBS_MANAGER, 0x01, (u8 *)&state, 2);
	} else if (battery->id == 0)
		battery->present = 1;

	if (result || !battery->present)
		return result;

	if (saved_present != battery->present) {
		battery->update_time = 0;
		result = FUNC0(battery);
		if (result) {
			battery->present = 0;
			return result;
		}
	}
	result = FUNC1(battery);
	if (result)
		battery->present = 0;
	return result;
}