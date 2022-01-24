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
struct request_queue {int /*<<< orphan*/  mq_freeze_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_DYING ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request_queue*) ; 
 scalar_t__ FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct request_queue *q)
{
	FUNC2(QUEUE_FLAG_DYING, q);

	/*
	 * When queue DYING flag is set, we need to block new req
	 * entering queue, so we call blk_freeze_queue_start() to
	 * prevent I/O from crossing blk_queue_enter().
	 */
	FUNC0(q);

	if (FUNC3(q))
		FUNC1(q);

	/* Make blk_queue_enter() reexamine the DYING flag. */
	FUNC4(&q->mq_freeze_wq);
}