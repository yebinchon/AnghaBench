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
struct acpi_device {int /*<<< orphan*/  dev; } ;
struct acpi_battery {int /*<<< orphan*/  sysfs_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  pm_nb; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 struct acpi_battery* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device)
{
	struct acpi_battery *battery = NULL;

	if (!device || !FUNC1(device))
		return -EINVAL;
	FUNC2(&device->dev, 0);
	battery = FUNC1(device);
	FUNC6(&battery->pm_nb);
#ifdef CONFIG_ACPI_PROCFS_POWER
	acpi_battery_remove_fs(device);
#endif
	FUNC5(battery);
	FUNC4(&battery->lock);
	FUNC4(&battery->sysfs_lock);
	FUNC3(battery);
	return 0;
}