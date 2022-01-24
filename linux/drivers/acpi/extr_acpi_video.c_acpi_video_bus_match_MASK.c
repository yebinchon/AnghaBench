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
struct acpi_device {scalar_t__ handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_VIDEO_BUS_NAME ; 
 int /*<<< orphan*/  AE_ALREADY_EXISTS ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC0 (scalar_t__,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC3(acpi_handle handle, u32 level, void *context,
			void **return_value)
{
	struct acpi_device *device = context;
	struct acpi_device *sibling;
	int result;

	if (handle == device->handle)
		return AE_CTRL_TERMINATE;

	result = FUNC0(handle, &sibling);
	if (result)
		return AE_OK;

	if (!FUNC2(FUNC1(sibling), ACPI_VIDEO_BUS_NAME))
			return AE_ALREADY_EXISTS;

	return AE_OK;
}