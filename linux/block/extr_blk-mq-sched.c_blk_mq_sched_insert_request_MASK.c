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
struct request_queue {struct elevator_queue* elevator; } ;
struct request {int rq_flags; int tag; int /*<<< orphan*/  queuelist; int /*<<< orphan*/  cmd_flags; struct blk_mq_hw_ctx* mq_hctx; struct blk_mq_ctx* mq_ctx; struct request_queue* q; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* insert_requests ) (struct blk_mq_hw_ctx*,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RQF_FLUSH_SEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_hw_ctx*,struct request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_mq_hw_ctx*,int) ; 
 scalar_t__ FUNC5 (struct blk_mq_hw_ctx*,int,struct request*) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct blk_mq_hw_ctx*,int /*<<< orphan*/ *,int) ; 

void FUNC11(struct request *rq, bool at_head,
				 bool run_queue, bool async)
{
	struct request_queue *q = rq->q;
	struct elevator_queue *e = q->elevator;
	struct blk_mq_ctx *ctx = rq->mq_ctx;
	struct blk_mq_hw_ctx *hctx = rq->mq_hctx;

	/* flush rq in flush machinery need to be dispatched directly */
	if (!(rq->rq_flags & RQF_FLUSH_SEQ) && FUNC7(rq->cmd_flags)) {
		FUNC3(rq);
		goto run;
	}

	FUNC1(e && (rq->tag != -1));

	if (FUNC5(hctx, !!e, rq))
		goto run;

	if (e && e->type->ops.insert_requests) {
		FUNC0(list);

		FUNC6(&rq->queuelist, &list);
		e->type->ops.insert_requests(hctx, &list, at_head);
	} else {
		FUNC8(&ctx->lock);
		FUNC2(hctx, rq, at_head);
		FUNC9(&ctx->lock);
	}

run:
	if (run_queue)
		FUNC4(hctx, async);
}