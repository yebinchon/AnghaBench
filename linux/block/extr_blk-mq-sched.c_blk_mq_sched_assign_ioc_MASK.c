#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct TYPE_3__ {struct io_cq* icq; } ;
struct request {TYPE_1__ elv; struct request_queue* q; } ;
struct io_cq {int /*<<< orphan*/  ioc; } ;
struct io_context {int dummy; } ;
struct TYPE_4__ {struct io_context* io_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct io_cq* FUNC1 (struct io_context*,struct request_queue*,int /*<<< orphan*/ ) ; 
 struct io_cq* FUNC2 (struct io_context*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct request *rq)
{
	struct request_queue *q = rq->q;
	struct io_context *ioc;
	struct io_cq *icq;

	/*
	 * May not have an IO context if it's a passthrough request
	 */
	ioc = current->io_context;
	if (!ioc)
		return;

	FUNC3(&q->queue_lock);
	icq = FUNC2(ioc, q);
	FUNC4(&q->queue_lock);

	if (!icq) {
		icq = FUNC1(ioc, q, GFP_ATOMIC);
		if (!icq)
			return;
	}
	FUNC0(icq->ioc);
	rq->elv.icq = icq;
}