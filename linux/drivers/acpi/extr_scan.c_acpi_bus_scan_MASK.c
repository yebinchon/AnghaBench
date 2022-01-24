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
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**),int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

int FUNC4(acpi_handle handle)
{
	void *device = NULL;

	if (FUNC0(FUNC2(handle, 0, NULL, &device)))
		FUNC3(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
				    acpi_bus_check_add, NULL, NULL, &device);

	if (device) {
		FUNC1(device);
		return 0;
	}
	return -ENODEV;
}