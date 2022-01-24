#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct request_queue {struct elevator_queue* elevator; } ;
struct TYPE_6__ {int /*<<< orphan*/ * icq; } ;
struct request {int /*<<< orphan*/  rq_flags; TYPE_1__ elv; } ;
struct elevator_queue {TYPE_3__* type; } ;
struct blk_mq_alloc_data {int cmd_flags; int flags; TYPE_4__* hctx; int /*<<< orphan*/ * ctx; struct request_queue* q; } ;
struct bio {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  queued; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* prepare_request ) (struct request*,struct bio*) ;int /*<<< orphan*/  (* limit_depth ) (int,struct blk_mq_alloc_data*) ;} ;
struct TYPE_8__ {TYPE_2__ ops; scalar_t__ icq_cache; } ;

/* Variables and functions */
 int BLK_MQ_REQ_INTERNAL ; 
 int BLK_MQ_REQ_NOWAIT ; 
 int BLK_MQ_REQ_RESERVED ; 
 unsigned int BLK_MQ_TAG_FAIL ; 
 int REQ_NOWAIT ; 
 int /*<<< orphan*/  RQF_ELVPRIV ; 
 int /*<<< orphan*/ * FUNC0 (struct request_queue*) ; 
 unsigned int FUNC1 (struct blk_mq_alloc_data*) ; 
 TYPE_4__* FUNC2 (struct request_queue*,int,int /*<<< orphan*/ *) ; 
 struct request* FUNC3 (struct blk_mq_alloc_data*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*) ; 
 scalar_t__ FUNC8 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct blk_mq_alloc_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct request*,struct bio*) ; 

__attribute__((used)) static struct request *FUNC14(struct request_queue *q,
					  struct bio *bio,
					  struct blk_mq_alloc_data *data)
{
	struct elevator_queue *e = q->elevator;
	struct request *rq;
	unsigned int tag;
	bool clear_ctx_on_error = false;
	u64 alloc_time_ns = 0;

	FUNC6(q);

	/* alloc_time includes depth and tag waits */
	if (FUNC8(q))
		alloc_time_ns = FUNC9();

	data->q = q;
	if (FUNC10(!data->ctx)) {
		data->ctx = FUNC0(q);
		clear_ctx_on_error = true;
	}
	if (FUNC10(!data->hctx))
		data->hctx = FUNC2(q, data->cmd_flags,
						data->ctx);
	if (data->cmd_flags & REQ_NOWAIT)
		data->flags |= BLK_MQ_REQ_NOWAIT;

	if (e) {
		data->flags |= BLK_MQ_REQ_INTERNAL;

		/*
		 * Flush requests are special and go directly to the
		 * dispatch list. Don't include reserved tags in the
		 * limiting, as it isn't useful.
		 */
		if (!FUNC11(data->cmd_flags) &&
		    e->type->ops.limit_depth &&
		    !(data->flags & BLK_MQ_REQ_RESERVED))
			e->type->ops.limit_depth(data->cmd_flags, data);
	} else {
		FUNC5(data->hctx);
	}

	tag = FUNC1(data);
	if (tag == BLK_MQ_TAG_FAIL) {
		if (clear_ctx_on_error)
			data->ctx = NULL;
		FUNC7(q);
		return NULL;
	}

	rq = FUNC3(data, tag, data->cmd_flags, alloc_time_ns);
	if (!FUNC11(data->cmd_flags)) {
		rq->elv.icq = NULL;
		if (e && e->type->ops.prepare_request) {
			if (e->type->icq_cache)
				FUNC4(rq);

			e->type->ops.prepare_request(rq, bio);
			rq->rq_flags |= RQF_ELVPRIV;
		}
	}
	data->hctx->queued++;
	return rq;
}