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
struct acpi_thermal {unsigned long long polling_frequency; TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 

__attribute__((used)) static int FUNC3(struct acpi_thermal *tz)
{
	acpi_status status = AE_OK;
	unsigned long long tmp;

	if (!tz)
		return -EINVAL;

	status = FUNC2(tz->device->handle, "_TZP", NULL, &tmp);
	if (FUNC1(status))
		return -ENODEV;

	tz->polling_frequency = tmp;
	FUNC0((ACPI_DB_INFO, "Polling frequency is %lu dS\n",
			  tz->polling_frequency));

	return 0;
}