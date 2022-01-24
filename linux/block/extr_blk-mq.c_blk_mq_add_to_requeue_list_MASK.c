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
struct request_queue {int /*<<< orphan*/  requeue_lock; int /*<<< orphan*/  requeue_list; } ;
struct request {int rq_flags; int /*<<< orphan*/  queuelist; struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RQF_SOFTBARRIER ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct request *rq, bool at_head,
				bool kick_requeue_list)
{
	struct request_queue *q = rq->q;
	unsigned long flags;

	/*
	 * We abuse this flag that is otherwise used by the I/O scheduler to
	 * request head insertion from the workqueue.
	 */
	FUNC0(rq->rq_flags & RQF_SOFTBARRIER);

	FUNC4(&q->requeue_lock, flags);
	if (at_head) {
		rq->rq_flags |= RQF_SOFTBARRIER;
		FUNC2(&rq->queuelist, &q->requeue_list);
	} else {
		FUNC3(&rq->queuelist, &q->requeue_list);
	}
	FUNC5(&q->requeue_lock, flags);

	if (kick_requeue_list)
		FUNC1(q);
}