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
struct TYPE_2__ {scalar_t__ functional; scalar_t__ present; } ;
struct acpi_device {int /*<<< orphan*/  dev; scalar_t__ handler; int /*<<< orphan*/  handle; TYPE_1__ status; } ;

/* Variables and functions */
 int EALREADY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *adev)
{
	int error;

	FUNC0(adev);
	if (adev->status.present || adev->status.functional) {
		/*
		 * This function is only called for device objects for which
		 * matching scan handlers exist.  The only situation in which
		 * the scan handler is not attached to this device object yet
		 * is when the device has just appeared (either it wasn't
		 * present at all before or it was removed and then added
		 * again).
		 */
		if (adev->handler) {
			FUNC3(&adev->dev, "Already enumerated\n");
			return -EALREADY;
		}
		error = FUNC1(adev->handle);
		if (error) {
			FUNC3(&adev->dev, "Namespace scan failure\n");
			return error;
		}
		if (!adev->handler) {
			FUNC3(&adev->dev, "Enumeration failure\n");
			error = -ENODEV;
		}
	} else {
		error = FUNC2(adev);
	}
	return error;
}