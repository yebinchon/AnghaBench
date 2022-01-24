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
struct request_queue {int /*<<< orphan*/  mq_freeze_depth; int /*<<< orphan*/  mq_freeze_wq; int /*<<< orphan*/  q_usage_counter; } ;
typedef  int blk_mq_req_flags_t ;

/* Variables and functions */
 int BLK_MQ_REQ_NOWAIT ; 
 int BLK_MQ_REQ_PREEMPT ; 
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

int FUNC9(struct request_queue *q, blk_mq_req_flags_t flags)
{
	const bool pm = flags & BLK_MQ_REQ_PREEMPT;

	while (true) {
		bool success = false;

		FUNC5();
		if (FUNC4(&q->q_usage_counter)) {
			/*
			 * The code that increments the pm_only counter is
			 * responsible for ensuring that that counter is
			 * globally visible before the queue is unfrozen.
			 */
			if (pm || !FUNC2(q)) {
				success = true;
			} else {
				FUNC3(&q->q_usage_counter);
			}
		}
		FUNC6();

		if (success)
			return 0;

		if (flags & BLK_MQ_REQ_NOWAIT)
			return -EBUSY;

		/*
		 * read pair of barrier in blk_freeze_queue_start(),
		 * we need to order reading __PERCPU_REF_DEAD flag of
		 * .q_usage_counter and reading .mq_freeze_depth or
		 * queue dying flag, otherwise the following wait may
		 * never return if the two reads are reordered.
		 */
		FUNC7();

		FUNC8(q->mq_freeze_wq,
			   (!q->mq_freeze_depth &&
			    (pm || (FUNC0(q),
				    !FUNC2(q)))) ||
			   FUNC1(q));
		if (FUNC1(q))
			return -ENODEV;
	}
}