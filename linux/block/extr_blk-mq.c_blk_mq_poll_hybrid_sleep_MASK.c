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
struct request_queue {unsigned int poll_nsec; } ;
struct request {int rq_flags; } ;
struct hrtimer_sleeper {int /*<<< orphan*/  timer; scalar_t__ task; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef  unsigned int ktime_t ;
typedef  enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int HRTIMER_MODE_ABS ; 
 int HRTIMER_MODE_REL ; 
 scalar_t__ MQ_RQ_COMPLETE ; 
 int RQF_MQ_POLL_SLEPT ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct request_queue*,struct blk_mq_hw_ctx*,struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hrtimer_sleeper*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct hrtimer_sleeper*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct request_queue *q,
				     struct blk_mq_hw_ctx *hctx,
				     struct request *rq)
{
	struct hrtimer_sleeper hs;
	enum hrtimer_mode mode;
	unsigned int nsecs;
	ktime_t kt;

	if (rq->rq_flags & RQF_MQ_POLL_SLEPT)
		return false;

	/*
	 * If we get here, hybrid polling is enabled. Hence poll_nsec can be:
	 *
	 *  0:	use half of prev avg
	 * >0:	use this specific value
	 */
	if (q->poll_nsec > 0)
		nsecs = q->poll_nsec;
	else
		nsecs = FUNC1(q, hctx, rq);

	if (!nsecs)
		return false;

	rq->rq_flags |= RQF_MQ_POLL_SLEPT;

	/*
	 * This will be replaced with the stats tracking code, using
	 * 'avg_completion_time / 2' as the pre-sleep target.
	 */
	kt = nsecs;

	mode = HRTIMER_MODE_REL;
	FUNC5(&hs, CLOCK_MONOTONIC, mode);
	FUNC6(&hs.timer, kt);

	do {
		if (FUNC2(rq) == MQ_RQ_COMPLETE)
			break;
		FUNC9(TASK_UNINTERRUPTIBLE);
		FUNC7(&hs, mode);
		if (hs.task)
			FUNC8();
		FUNC4(&hs.timer);
		mode = HRTIMER_MODE_ABS;
	} while (hs.task && !FUNC10(current));

	FUNC0(TASK_RUNNING);
	FUNC3(&hs.timer);
	return true;
}