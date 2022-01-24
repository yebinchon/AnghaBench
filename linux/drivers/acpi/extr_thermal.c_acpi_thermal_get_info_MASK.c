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
struct TYPE_2__ {int cooling_mode; } ;
struct acpi_thermal {scalar_t__ polling_frequency; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_THERMAL_MODE_ACTIVE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_thermal*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_thermal*) ; 
 int FUNC2 (struct acpi_thermal*) ; 
 int FUNC3 (struct acpi_thermal*) ; 
 int FUNC4 (struct acpi_thermal*,int /*<<< orphan*/ ) ; 
 scalar_t__ tzp ; 

__attribute__((used)) static int FUNC5(struct acpi_thermal *tz)
{
	int result = 0;


	if (!tz)
		return -EINVAL;

	FUNC0(tz);

	/* Get trip points [_CRT, _PSV, etc.] (required) */
	result = FUNC3(tz);
	if (result)
		return result;

	/* Get temperature [_TMP] (required) */
	result = FUNC2(tz);
	if (result)
		return result;

	/* Set the cooling mode [_SCP] to active cooling (default) */
	result = FUNC4(tz, ACPI_THERMAL_MODE_ACTIVE);
	if (!result)
		tz->flags.cooling_mode = 1;

	/* Get default polling frequency [_TZP] (optional) */
	if (tzp)
		tz->polling_frequency = tzp;
	else
		FUNC1(tz);

	return 0;
}