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
struct request_queue {int /*<<< orphan*/  q_usage_counter; int /*<<< orphan*/  sysfs_lock; scalar_t__ elevator; TYPE_1__* backing_dev_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  laptop_mode_wb_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_DEAD ; 
 int /*<<< orphan*/  QUEUE_FLAG_DYING ; 
 int /*<<< orphan*/  QUEUE_FLAG_NOMERGES ; 
 int /*<<< orphan*/  QUEUE_FLAG_NOXMERGES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct request_queue*) ; 

void FUNC14(struct request_queue *q)
{
	/* mark @q DYING, no new request or merges will be allowed afterwards */
	FUNC9(&q->sysfs_lock);
	FUNC6(q);

	FUNC5(QUEUE_FLAG_NOMERGES, q);
	FUNC5(QUEUE_FLAG_NOXMERGES, q);
	FUNC5(QUEUE_FLAG_DYING, q);
	FUNC10(&q->sysfs_lock);

	/*
	 * Drain all requests queued before DYING marking. Set DEAD flag to
	 * prevent that blk_mq_run_hw_queues() accesses the hardware queues
	 * after draining finished.
	 */
	FUNC1(q);

	FUNC13(q);

	FUNC5(QUEUE_FLAG_DEAD, q);

	/* for synchronous bio-based driver finish in-flight integrity i/o */
	FUNC0();

	/* @q won't process any more request, flush async actions */
	FUNC8(&q->backing_dev_info->laptop_mode_wb_timer);
	FUNC7(q);

	if (FUNC12(q))
		FUNC2(q);

	/*
	 * In theory, request pool of sched_tags belongs to request queue.
	 * However, the current implementation requires tag_set for freeing
	 * requests, so free the pool now.
	 *
	 * Queue has become frozen, there can't be any in-queue requests, so
	 * it is safe to free requests now.
	 */
	FUNC9(&q->sysfs_lock);
	if (q->elevator)
		FUNC3(q);
	FUNC10(&q->sysfs_lock);

	FUNC11(&q->q_usage_counter);

	/* @q is and will stay empty, shutdown and put */
	FUNC4(q);
}