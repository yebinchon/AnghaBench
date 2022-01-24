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
struct acpi_ac {int /*<<< orphan*/  state; TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_AC_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct acpi_ac *ac)
{
	acpi_status status = AE_OK;

	if (!ac)
		return -EINVAL;

	status = FUNC2(ac->device->handle, "_PSR", NULL,
				       &ac->state);
	if (FUNC1(status)) {
		FUNC0((AE_INFO, status,
				"Error reading AC Adapter state"));
		ac->state = ACPI_AC_STATUS_UNKNOWN;
		return -ENODEV;
	}

	return 0;
}