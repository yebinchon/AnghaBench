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
struct lc_element {scalar_t__ lc_number; } ;
struct drbd_device {int /*<<< orphan*/  al_wait; TYPE_1__* act_log; } ;
struct TYPE_2__ {int nr_elements; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ LC_FREE ; 
 int /*<<< orphan*/  __LC_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,struct lc_element*) ; 
 struct lc_element* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drbd_device *device)
{
	struct lc_element *al_ext;
	int i;

	FUNC0(device, FUNC3(__LC_LOCKED, &device->act_log->flags));

	for (i = 0; i < device->act_log->nr_elements; i++) {
		al_ext = FUNC2(device->act_log, i);
		if (al_ext->lc_number == LC_FREE)
			continue;
		FUNC4(device->al_wait, FUNC1(device, al_ext));
	}

	FUNC5(&device->al_wait);
}