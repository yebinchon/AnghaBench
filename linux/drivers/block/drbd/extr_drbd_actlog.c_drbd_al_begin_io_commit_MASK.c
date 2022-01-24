#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drbd_device {int /*<<< orphan*/  al_wait; TYPE_3__* act_log; int /*<<< orphan*/  al_lock; TYPE_1__* ldev; } ;
struct TYPE_8__ {scalar_t__ pending_changes; } ;
struct TYPE_7__ {int al_updates; } ;
struct TYPE_6__ {int /*<<< orphan*/  disk_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct drbd_device *device)
{
	bool locked = false;

	/* Serialize multiple transactions.
	 * This uses test_and_set_bit, memory barrier is implicit.
	 */
	FUNC9(device->al_wait,
			device->act_log->pending_changes == 0 ||
			(locked = FUNC2(device->act_log)));

	if (locked) {
		/* Double check: it may have been committed by someone else,
		 * while we have been waiting for the lock. */
		if (device->act_log->pending_changes) {
			bool write_al_updates;

			FUNC5();
			write_al_updates = FUNC4(device->ldev->disk_conf)->al_updates;
			FUNC6();

			if (write_al_updates)
				FUNC0(device);
			FUNC7(&device->al_lock);
			/* FIXME
			if (err)
				we need an "lc_cancel" here;
			*/
			FUNC1(device->act_log);
			FUNC8(&device->al_lock);
		}
		FUNC3(device->act_log);
		FUNC10(&device->al_wait);
	}
}