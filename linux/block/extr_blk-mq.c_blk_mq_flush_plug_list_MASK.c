#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  queuelist; struct blk_mq_hw_ctx* mq_hctx; struct blk_mq_ctx* mq_ctx; struct request_queue* q; } ;
struct blk_plug {int rq_count; scalar_t__ multiple_queues; int /*<<< orphan*/  mq_list; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_hw_ctx*,struct blk_mq_ctx*,TYPE_1__*,int) ; 
 TYPE_1__ list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct request* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  plug_rq_cmp ; 
 TYPE_1__ rq_list ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,unsigned int,int) ; 

void FUNC10(struct blk_plug *plug, bool from_schedule)
{
	struct blk_mq_hw_ctx *this_hctx;
	struct blk_mq_ctx *this_ctx;
	struct request_queue *this_q;
	struct request *rq;
	FUNC1(list);
	FUNC1(rq_list);
	unsigned int depth;

	FUNC8(&plug->mq_list, &list);

	if (plug->rq_count > 2 && plug->multiple_queues)
		FUNC7(NULL, &list, plug_rq_cmp);

	plug->rq_count = 0;

	this_q = NULL;
	this_hctx = NULL;
	this_ctx = NULL;
	depth = 0;

	while (!FUNC5(&list)) {
		rq = FUNC6(list.next);
		FUNC4(&rq->queuelist);
		FUNC0(!rq->q);
		if (rq->mq_hctx != this_hctx || rq->mq_ctx != this_ctx) {
			if (this_hctx) {
				FUNC9(this_q, depth, !from_schedule);
				FUNC2(this_hctx, this_ctx,
								&rq_list,
								from_schedule);
			}

			this_q = rq->q;
			this_ctx = rq->mq_ctx;
			this_hctx = rq->mq_hctx;
			depth = 0;
		}

		depth++;
		FUNC3(&rq->queuelist, &rq_list);
	}

	/*
	 * If 'this_hctx' is set, we know we have entries to complete
	 * on 'rq_list'. Do those.
	 */
	if (this_hctx) {
		FUNC9(this_q, depth, !from_schedule);
		FUNC2(this_hctx, this_ctx, &rq_list,
						from_schedule);
	}
}