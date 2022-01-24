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
struct request_queue {int dummy; } ;
struct request {scalar_t__ fifo_time; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  queuelist; } ;
struct bfq_queue {struct request* next_rq; } ;

/* Variables and functions */
 struct bfq_queue* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct request_queue *q, struct request *rq,
				struct request *next)
{
	struct bfq_queue *bfqq = FUNC0(rq),
		*next_bfqq = FUNC0(next);

	if (!bfqq)
		return;

	/*
	 * If next and rq belong to the same bfq_queue and next is older
	 * than rq, then reposition rq in the fifo (by substituting next
	 * with rq). Otherwise, if next and rq belong to different
	 * bfq_queues, never reposition rq: in fact, we would have to
	 * reposition it with respect to next's position in its own fifo,
	 * which would most certainly be too expensive with respect to
	 * the benefits.
	 */
	if (bfqq == next_bfqq &&
	    !FUNC4(&rq->queuelist) && !FUNC4(&next->queuelist) &&
	    next->fifo_time < rq->fifo_time) {
		FUNC3(&rq->queuelist);
		FUNC5(&next->queuelist, &rq->queuelist);
		rq->fifo_time = next->fifo_time;
	}

	if (bfqq->next_rq == next)
		bfqq->next_rq = rq;

	FUNC1(FUNC2(bfqq), next->cmd_flags);
}