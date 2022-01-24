#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ _BCQ; scalar_t__ _BQC; } ;
struct acpi_video_device {TYPE_3__* brightness; TYPE_2__ cap; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_6__ {int count; unsigned long long* levels; unsigned long long curr; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_VIDEO_FIRST_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 unsigned long long FUNC3 (struct acpi_video_device*,unsigned long long) ; 

__attribute__((used)) static int
FUNC4(struct acpi_video_device *device,
					unsigned long long *level, bool raw)
{
	acpi_status status = AE_OK;
	int i;

	if (device->cap._BQC || device->cap._BCQ) {
		char *buf = device->cap._BQC ? "_BQC" : "_BCQ";

		status = FUNC2(device->dev->handle, buf,
						NULL, level);
		if (FUNC0(status)) {
			if (raw) {
				/*
				 * Caller has indicated he wants the raw
				 * value returned by _BQC, so don't furtherly
				 * mess with the value.
				 */
				return 0;
			}

			*level = FUNC3(device, *level);

			for (i = ACPI_VIDEO_FIRST_LEVEL;
			     i < device->brightness->count; i++)
				if (device->brightness->levels[i] == *level) {
					device->brightness->curr = *level;
					return 0;
				}
			/*
			 * BQC returned an invalid level.
			 * Stop using it.
			 */
			FUNC1((AE_INFO,
				      "%s returned an invalid level",
				      buf));
			device->cap._BQC = device->cap._BCQ = 0;
		} else {
			/*
			 * Fixme:
			 * should we return an error or ignore this failure?
			 * dev->brightness->curr is a cached value which stores
			 * the correct current backlight level in most cases.
			 * ACPI video backlight still works w/ buggy _BQC.
			 * http://bugzilla.kernel.org/show_bug.cgi?id=12233
			 */
			FUNC1((AE_INFO, "Evaluating %s failed", buf));
			device->cap._BQC = device->cap._BCQ = 0;
		}
	}

	*level = device->brightness->curr;
	return 0;
}