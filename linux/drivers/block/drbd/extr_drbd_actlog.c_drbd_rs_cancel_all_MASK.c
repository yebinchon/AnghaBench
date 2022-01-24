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
struct drbd_device {int /*<<< orphan*/  al_wait; int /*<<< orphan*/  al_lock; int /*<<< orphan*/  resync_wenr; scalar_t__ resync_locked; int /*<<< orphan*/  resync; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_FAILED ; 
 int /*<<< orphan*/  LC_FREE ; 
 scalar_t__ FUNC0 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drbd_device *device)
{
	FUNC3(&device->al_lock);

	if (FUNC0(device, D_FAILED)) { /* Makes sure ->resync is there. */
		FUNC1(device->resync);
		FUNC2(device);
	}
	device->resync_locked = 0;
	device->resync_wenr = LC_FREE;
	FUNC4(&device->al_lock);
	FUNC5(&device->al_wait);
}