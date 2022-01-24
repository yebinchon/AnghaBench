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
struct request_queue {int nr_hw_queues; TYPE_1__* mq_ops; int /*<<< orphan*/  queue_flags; } ;
struct TYPE_4__ {scalar_t__ flags; struct request* info; int /*<<< orphan*/  func; } ;
struct request {int cmd_flags; TYPE_2__ csd; int /*<<< orphan*/  state; struct request_queue* q; struct blk_mq_ctx* mq_ctx; } ;
struct blk_mq_ctx {int cpu; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* complete ) (struct request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MQ_RQ_COMPLETE ; 
 int /*<<< orphan*/  QUEUE_FLAG_SAME_COMP ; 
 int /*<<< orphan*/  QUEUE_FLAG_SAME_FORCE ; 
 int REQ_HIPRI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  __blk_mq_complete_request_remote ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct request *rq)
{
	struct blk_mq_ctx *ctx = rq->mq_ctx;
	struct request_queue *q = rq->q;
	bool shared = false;
	int cpu;

	FUNC0(rq->state, MQ_RQ_COMPLETE);
	/*
	 * Most of single queue controllers, there is only one irq vector
	 * for handling IO completion, and the only irq's affinity is set
	 * as all possible CPUs. On most of ARCHs, this affinity means the
	 * irq is handled on one specific CPU.
	 *
	 * So complete IO reqeust in softirq context in case of single queue
	 * for not degrading IO performance by irqsoff latency.
	 */
	if (q->nr_hw_queues == 1) {
		FUNC1(rq);
		return;
	}

	/*
	 * For a polled request, always complete locallly, it's pointless
	 * to redirect the completion.
	 */
	if ((rq->cmd_flags & REQ_HIPRI) ||
	    !FUNC9(QUEUE_FLAG_SAME_COMP, &q->queue_flags)) {
		q->mq_ops->complete(rq);
		return;
	}

	cpu = FUNC4();
	if (!FUNC9(QUEUE_FLAG_SAME_FORCE, &q->queue_flags))
		shared = FUNC3(cpu, ctx->cpu);

	if (cpu != ctx->cpu && !shared && FUNC2(ctx->cpu)) {
		rq->csd.func = __blk_mq_complete_request_remote;
		rq->csd.info = rq;
		rq->csd.flags = 0;
		FUNC6(ctx->cpu, &rq->csd);
	} else {
		q->mq_ops->complete(rq);
	}
	FUNC5();
}