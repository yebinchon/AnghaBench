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
struct acpi_fan {unsigned long fps_count; TYPE_1__* fps; } ;
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;
typedef  int acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 struct acpi_fan* FUNC1 (struct acpi_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device, unsigned long state)
{
	struct acpi_fan *fan = FUNC1(device);
	acpi_status status;

	if (state >= fan->fps_count)
		return -EINVAL;

	status = FUNC2(device->handle, "_FSL",
					    fan->fps[state].control);
	if (FUNC0(status)) {
		FUNC3(&device->dev, "Failed to set state by _FSL\n");
		return status;
	}

	return 0;
}