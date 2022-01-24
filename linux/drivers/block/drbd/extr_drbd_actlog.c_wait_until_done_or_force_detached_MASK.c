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
struct drbd_device {int /*<<< orphan*/  flags; int /*<<< orphan*/  misc_wait; } ;
struct drbd_backing_dev {int /*<<< orphan*/  disk_conf; } ;
struct TYPE_2__ {long disk_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_FORCE_DETACH ; 
 int /*<<< orphan*/  FORCE_DETACH ; 
 long HZ ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ ,int,long) ; 

void FUNC7(struct drbd_device *device, struct drbd_backing_dev *bdev,
				     unsigned int *done)
{
	long dt;

	FUNC3();
	dt = FUNC2(bdev->disk_conf)->disk_timeout;
	FUNC4();
	dt = dt * HZ / 10;
	if (dt == 0)
		dt = MAX_SCHEDULE_TIMEOUT;

	dt = FUNC6(device->misc_wait,
			*done || FUNC5(FORCE_DETACH, &device->flags), dt);
	if (dt == 0) {
		FUNC1(device, "meta-data IO operation timed out\n");
		FUNC0(device, 1, DRBD_FORCE_DETACH);
	}
}