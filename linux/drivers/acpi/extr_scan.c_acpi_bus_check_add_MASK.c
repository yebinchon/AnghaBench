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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int ACPI_BUS_TYPE_POWER ; 
 int /*<<< orphan*/  AE_CTRL_DEPTH ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device**,int /*<<< orphan*/ ,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*) ; 

__attribute__((used)) static acpi_status FUNC6(acpi_handle handle, u32 lvl_not_used,
				      void *not_used, void **return_value)
{
	struct acpi_device *device = NULL;
	int type;
	unsigned long long sta;
	int result;

	FUNC2(handle, &device);
	if (device)
		goto out;

	result = FUNC3(handle, &type, &sta);
	if (result)
		return AE_OK;

	if (type == ACPI_BUS_TYPE_POWER) {
		FUNC0(handle);
		return AE_OK;
	}

	FUNC1(&device, handle, type, sta);
	if (!device)
		return AE_CTRL_DEPTH;

	FUNC5(device);
	FUNC4(device);

 out:
	if (!*return_value)
		*return_value = device;

	return AE_OK;
}