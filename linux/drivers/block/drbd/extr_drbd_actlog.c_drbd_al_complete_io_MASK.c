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
struct lc_element {int dummy; } ;
struct drbd_interval {int sector; int size; } ;
struct drbd_device {int /*<<< orphan*/  al_wait; int /*<<< orphan*/  al_lock; int /*<<< orphan*/  act_log; } ;

/* Variables and functions */
 int AL_EXTENT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,char*,unsigned int) ; 
 struct lc_element* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lc_element*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct drbd_device *device, struct drbd_interval *i)
{
	/* for bios crossing activity log extent boundaries,
	 * we may need to activate two extents in one go */
	unsigned first = i->sector >> (AL_EXTENT_SHIFT-9);
	unsigned last = i->size == 0 ? first : (i->sector + (i->size >> 9) - 1) >> (AL_EXTENT_SHIFT-9);
	unsigned enr;
	struct lc_element *extent;
	unsigned long flags;

	FUNC0(device, first <= last);
	FUNC4(&device->al_lock, flags);

	for (enr = first; enr <= last; enr++) {
		extent = FUNC2(device->act_log, enr);
		if (!extent) {
			FUNC1(device, "al_complete_io() called on inactive extent %u\n", enr);
			continue;
		}
		FUNC3(device->act_log, extent);
	}
	FUNC5(&device->al_lock, flags);
	FUNC6(&device->al_wait);
}