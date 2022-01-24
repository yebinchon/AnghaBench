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
struct acpi_device {int dummy; } ;
struct acpi_ac {int /*<<< orphan*/  battery_nb; int /*<<< orphan*/  charger; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ac*) ; 
 struct acpi_ac* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ac*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device)
{
	struct acpi_ac *ac = NULL;


	if (!device || !FUNC1(device))
		return -EINVAL;

	ac = FUNC1(device);

	FUNC3(ac->charger);
	FUNC4(&ac->battery_nb);

#ifdef CONFIG_ACPI_PROCFS_POWER
	acpi_ac_remove_fs(ac);
#endif

	FUNC2(ac);

	return 0;
}