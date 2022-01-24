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
struct request_queue {scalar_t__ rpm_status; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  q_usage_counter; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ RPM_ACTIVE ; 
 scalar_t__ RPM_SUSPENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct request_queue *q)
{
	int ret = 0;

	if (!q->dev)
		return ret;

	FUNC0(q->rpm_status != RPM_ACTIVE);

	/*
	 * Increase the pm_only counter before checking whether any
	 * non-PM blk_queue_enter() calls are in progress to avoid that any
	 * new non-PM blk_queue_enter() calls succeed before the pm_only
	 * counter is decreased again.
	 */
	FUNC4(q);
	ret = -EBUSY;
	/* Switch q_usage_counter from per-cpu to atomic mode. */
	FUNC2(q);
	/*
	 * Wait until atomic mode has been reached. Since that
	 * involves calling call_rcu(), it is guaranteed that later
	 * blk_queue_enter() calls see the pm-only state. See also
	 * http://lwn.net/Articles/573497/.
	 */
	FUNC6(&q->q_usage_counter);
	if (FUNC5(&q->q_usage_counter))
		ret = 0;
	/* Switch q_usage_counter back to per-cpu mode. */
	FUNC3(q);

	FUNC8(&q->queue_lock);
	if (ret < 0)
		FUNC7(q->dev);
	else
		q->rpm_status = RPM_SUSPENDING;
	FUNC9(&q->queue_lock);

	if (ret)
		FUNC1(q);

	return ret;
}