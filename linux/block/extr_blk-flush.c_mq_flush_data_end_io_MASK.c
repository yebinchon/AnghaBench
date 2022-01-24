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
struct request_queue {scalar_t__ elevator; } ;
struct request {scalar_t__ tag; struct blk_mq_ctx* mq_ctx; struct blk_mq_hw_ctx* mq_hctx; struct request_queue* q; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int dummy; } ;
struct blk_flush_queue {int /*<<< orphan*/  mq_flush_lock; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_FSEQ_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,struct blk_flush_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct blk_flush_queue* FUNC2 (struct request_queue*,struct blk_mq_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct request *rq, blk_status_t error)
{
	struct request_queue *q = rq->q;
	struct blk_mq_hw_ctx *hctx = rq->mq_hctx;
	struct blk_mq_ctx *ctx = rq->mq_ctx;
	unsigned long flags;
	struct blk_flush_queue *fq = FUNC2(q, ctx);

	if (q->elevator) {
		FUNC0(rq->tag < 0);
		FUNC3(rq);
	}

	/*
	 * After populating an empty queue, kick it to avoid stall.  Read
	 * the comment in flush_end_io().
	 */
	FUNC5(&fq->mq_flush_lock, flags);
	FUNC1(rq, fq, REQ_FSEQ_DATA, error);
	FUNC6(&fq->mq_flush_lock, flags);

	FUNC4(hctx);
}