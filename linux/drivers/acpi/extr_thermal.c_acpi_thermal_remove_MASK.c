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
struct acpi_thermal {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_thermal* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_thermal_pm_queue ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_thermal*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_thermal*) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device)
{
	struct acpi_thermal *tz = NULL;

	if (!device || !FUNC0(device))
		return -EINVAL;

	FUNC2(acpi_thermal_pm_queue);
	tz = FUNC0(device);

	FUNC1(tz);
	FUNC3(tz);
	return 0;
}