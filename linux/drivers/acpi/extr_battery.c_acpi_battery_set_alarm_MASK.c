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
struct acpi_battery {int /*<<< orphan*/  alarm; int /*<<< orphan*/  lock; TYPE_1__* device; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BATTERY_ALARM_PRESENT ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct acpi_battery *battery)
{
	acpi_status status = 0;

	if (!FUNC2(battery) ||
	    !FUNC6(ACPI_BATTERY_ALARM_PRESENT, &battery->flags))
		return -ENODEV;

	FUNC4(&battery->lock);
	status = FUNC3(battery->device->handle, "_BTP",
					    battery->alarm);
	FUNC5(&battery->lock);

	if (FUNC1(status))
		return -ENODEV;

	FUNC0((ACPI_DB_INFO, "Alarm set to %d\n", battery->alarm));
	return 0;
}