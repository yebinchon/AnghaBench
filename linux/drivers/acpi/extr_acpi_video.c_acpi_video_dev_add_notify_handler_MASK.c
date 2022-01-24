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
struct TYPE_2__ {int notify; } ;
struct acpi_video_device {TYPE_1__ flags; struct acpi_device* dev; } ;
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_video_device*) ; 
 int /*<<< orphan*/  acpi_video_device_notify ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC3(struct acpi_video_device *device)
{
	acpi_status status;
	struct acpi_device *adev = device->dev;

	status = FUNC1(adev->handle, ACPI_DEVICE_NOTIFY,
					     acpi_video_device_notify, device);
	if (FUNC0(status))
		FUNC2(&adev->dev, "Error installing notify handler\n");
	else
		device->flags.notify = 1;
}