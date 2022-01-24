#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct acpi_video_device {TYPE_3__* backlight; TYPE_1__* brightness; TYPE_4__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct TYPE_6__ {int brightness; } ;
struct TYPE_7__ {TYPE_2__ props; } ;
struct TYPE_5__ {int curr; int count; int* levels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int ACPI_VIDEO_FIRST_LEVEL ; 
 int /*<<< orphan*/  AE_INFO ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct acpi_video_device *device, int level)
{
	int status;
	int state;

	status = FUNC2(device->dev->handle,
					    "_BCM", level);
	if (FUNC1(status)) {
		FUNC0((AE_INFO, "Evaluating _BCM failed"));
		return -EIO;
	}

	device->brightness->curr = level;
	for (state = ACPI_VIDEO_FIRST_LEVEL; state < device->brightness->count;
	     state++)
		if (level == device->brightness->levels[state]) {
			if (device->backlight)
				device->backlight->props.brightness =
					state - ACPI_VIDEO_FIRST_LEVEL;
			return 0;
		}

	FUNC0((AE_INFO, "Current brightness invalid"));
	return -EINVAL;
}