#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct request {int tag; unsigned int internal_tag; unsigned int cmd_flags; int /*<<< orphan*/  ref; int /*<<< orphan*/ * end_io_data; int /*<<< orphan*/ * end_io; scalar_t__ timeout; int /*<<< orphan*/  deadline; scalar_t__ extra_len; scalar_t__ nr_integrity_segments; scalar_t__ nr_phys_segments; scalar_t__ stats_sectors; scalar_t__ io_start_time_ns; scalar_t__ start_time_ns; int /*<<< orphan*/  alloc_time_ns; int /*<<< orphan*/ * part; int /*<<< orphan*/ * rq_disk; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  hash; int /*<<< orphan*/  queuelist; int /*<<< orphan*/  rq_flags; TYPE_2__* mq_hctx; TYPE_3__* mq_ctx; int /*<<< orphan*/  q; } ;
struct blk_mq_tags {struct request** static_rqs; } ;
struct blk_mq_alloc_data {int flags; TYPE_3__* ctx; int /*<<< orphan*/  q; TYPE_2__* hctx; } ;
typedef  int /*<<< orphan*/  req_flags_t ;
struct TYPE_6__ {int /*<<< orphan*/ * rq_dispatched; } ;
struct TYPE_5__ {int flags; TYPE_1__* tags; int /*<<< orphan*/  nr_active; } ;
struct TYPE_4__ {struct request** rqs; } ;

/* Variables and functions */
 int BLK_MQ_F_TAG_SHARED ; 
 int BLK_MQ_REQ_INTERNAL ; 
 int BLK_MQ_REQ_PREEMPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RQF_IO_STAT ; 
 int /*<<< orphan*/  RQF_MQ_INFLIGHT ; 
 int /*<<< orphan*/  RQF_PREEMPT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct request*) ; 
 struct blk_mq_tags* FUNC6 (struct blk_mq_alloc_data*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 size_t FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct request *FUNC11(struct blk_mq_alloc_data *data,
		unsigned int tag, unsigned int op, u64 alloc_time_ns)
{
	struct blk_mq_tags *tags = FUNC6(data);
	struct request *rq = tags->static_rqs[tag];
	req_flags_t rq_flags = 0;

	if (data->flags & BLK_MQ_REQ_INTERNAL) {
		rq->tag = -1;
		rq->internal_tag = tag;
	} else {
		if (data->hctx->flags & BLK_MQ_F_TAG_SHARED) {
			rq_flags = RQF_MQ_INFLIGHT;
			FUNC4(&data->hctx->nr_active);
		}
		rq->tag = tag;
		rq->internal_tag = -1;
		data->hctx->tags->rqs[rq->tag] = rq;
	}

	/* csd/requeue_work/fifo_time is initialized before use */
	rq->q = data->q;
	rq->mq_ctx = data->ctx;
	rq->mq_hctx = data->hctx;
	rq->rq_flags = rq_flags;
	rq->cmd_flags = op;
	if (data->flags & BLK_MQ_REQ_PREEMPT)
		rq->rq_flags |= RQF_PREEMPT;
	if (FUNC7(data->q))
		rq->rq_flags |= RQF_IO_STAT;
	FUNC1(&rq->queuelist);
	FUNC0(&rq->hash);
	FUNC2(&rq->rb_node);
	rq->rq_disk = NULL;
	rq->part = NULL;
#ifdef CONFIG_BLK_RQ_ALLOC_TIME
	rq->alloc_time_ns = alloc_time_ns;
#endif
	if (FUNC5(rq))
		rq->start_time_ns = FUNC8();
	else
		rq->start_time_ns = 0;
	rq->io_start_time_ns = 0;
	rq->stats_sectors = 0;
	rq->nr_phys_segments = 0;
#if defined(CONFIG_BLK_DEV_INTEGRITY)
	rq->nr_integrity_segments = 0;
#endif
	/* tag was already set */
	rq->extra_len = 0;
	FUNC3(rq->deadline, 0);

	rq->timeout = 0;

	rq->end_io = NULL;
	rq->end_io_data = NULL;

	data->ctx->rq_dispatched[FUNC9(op)]++;
	FUNC10(&rq->ref, 1);
	return rq;
}