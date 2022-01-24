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
struct rbd_device {int /*<<< orphan*/  lock_dwork; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*) ; 

__attribute__((used)) static void FUNC3(struct rbd_device *rbd_dev)
{
	if (!FUNC2(rbd_dev))
		return;

	FUNC0(rbd_dev);

	/*
	 * Give others a chance to grab the lock - we would re-acquire
	 * almost immediately if we got new IO while draining the running
	 * list otherwise.  We need to ack our own notifications, so this
	 * lock_dwork will be requeued from rbd_handle_released_lock() by
	 * way of maybe_kick_acquire().
	 */
	FUNC1(&rbd_dev->lock_dwork);
}