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
struct request {int tag; int /*<<< orphan*/  rq_flags; int /*<<< orphan*/  internal_tag; int /*<<< orphan*/  cmd_flags; TYPE_2__* mq_hctx; int /*<<< orphan*/  q; } ;
struct blk_mq_alloc_data {TYPE_2__* hctx; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  q; } ;
struct TYPE_4__ {TYPE_1__* tags; int /*<<< orphan*/  nr_active; int /*<<< orphan*/  sched_tags; } ;
struct TYPE_3__ {struct request** rqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_REQ_NOWAIT ; 
 int /*<<< orphan*/  BLK_MQ_REQ_RESERVED ; 
 int /*<<< orphan*/  RQF_MQ_INFLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct blk_mq_alloc_data*) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(struct request *rq)
{
	struct blk_mq_alloc_data data = {
		.q = rq->q,
		.hctx = rq->mq_hctx,
		.flags = BLK_MQ_REQ_NOWAIT,
		.cmd_flags = rq->cmd_flags,
	};
	bool shared;

	if (rq->tag != -1)
		goto done;

	if (FUNC3(data.hctx->sched_tags, rq->internal_tag))
		data.flags |= BLK_MQ_REQ_RESERVED;

	shared = FUNC2(data.hctx);
	rq->tag = FUNC1(&data);
	if (rq->tag >= 0) {
		if (shared) {
			rq->rq_flags |= RQF_MQ_INFLIGHT;
			FUNC0(&data.hctx->nr_active);
		}
		data.hctx->tags->rqs[rq->tag] = rq;
	}

done:
	return rq->tag != -1;
}