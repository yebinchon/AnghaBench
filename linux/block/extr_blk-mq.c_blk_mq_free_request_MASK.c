#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  backing_dev_info; struct elevator_queue* elevator; } ;
struct TYPE_8__ {TYPE_3__* icq; } ;
struct request {int rq_flags; int /*<<< orphan*/  ref; int /*<<< orphan*/  state; TYPE_4__ elv; struct blk_mq_hw_ctx* mq_hctx; struct blk_mq_ctx* mq_ctx; struct request_queue* q; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  nr_active; } ;
struct blk_mq_ctx {int /*<<< orphan*/ * rq_completed; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioc; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* finish_request ) (struct request*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  MQ_RQ_IDLE ; 
 int RQF_ELVPRIV ; 
 int RQF_MQ_INFLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ laptop_mode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC9 (struct request*) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct request *rq)
{
	struct request_queue *q = rq->q;
	struct elevator_queue *e = q->elevator;
	struct blk_mq_ctx *ctx = rq->mq_ctx;
	struct blk_mq_hw_ctx *hctx = rq->mq_hctx;

	if (rq->rq_flags & RQF_ELVPRIV) {
		if (e && e->type->ops.finish_request)
			e->type->ops.finish_request(rq);
		if (rq->elv.icq) {
			FUNC5(rq->elv.icq->ioc);
			rq->elv.icq = NULL;
		}
	}

	ctx->rq_completed[FUNC7(rq)]++;
	if (rq->rq_flags & RQF_MQ_INFLIGHT)
		FUNC2(&hctx->nr_active);

	if (FUNC10(laptop_mode && !FUNC3(rq)))
		FUNC4(q->backing_dev_info);

	FUNC8(q, rq);

	FUNC0(rq->state, MQ_RQ_IDLE);
	if (FUNC6(&rq->ref))
		FUNC1(rq);
}