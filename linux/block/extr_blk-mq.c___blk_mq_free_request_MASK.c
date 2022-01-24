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
struct request {int internal_tag; int tag; struct blk_mq_hw_ctx* mq_hctx; struct blk_mq_ctx* mq_ctx; struct request_queue* q; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  sched_tags; int /*<<< orphan*/  tags; } ;
struct blk_mq_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_mq_hw_ctx*,int /*<<< orphan*/ ,struct blk_mq_ctx*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 

__attribute__((used)) static void FUNC4(struct request *rq)
{
	struct request_queue *q = rq->q;
	struct blk_mq_ctx *ctx = rq->mq_ctx;
	struct blk_mq_hw_ctx *hctx = rq->mq_hctx;
	const int sched_tag = rq->internal_tag;

	FUNC2(rq);
	rq->mq_hctx = NULL;
	if (rq->tag != -1)
		FUNC0(hctx, hctx->tags, ctx, rq->tag);
	if (sched_tag != -1)
		FUNC0(hctx, hctx->sched_tags, ctx, sched_tag);
	FUNC1(hctx);
	FUNC3(q);
}