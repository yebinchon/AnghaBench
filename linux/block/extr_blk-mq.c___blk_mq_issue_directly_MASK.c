#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_queue {TYPE_1__* mq_ops; } ;
struct request {struct request_queue* q; } ;
struct blk_mq_queue_data {int last; struct request* rq; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef  int blk_status_t ;
typedef  int /*<<< orphan*/  blk_qc_t ;
struct TYPE_2__ {int (* queue_rq ) (struct blk_mq_hw_ctx*,struct blk_mq_queue_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
#define  BLK_STS_DEV_RESOURCE 130 
#define  BLK_STS_OK 129 
#define  BLK_STS_RESOURCE 128 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_hw_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_hw_ctx*,struct request*) ; 
 int FUNC3 (struct blk_mq_hw_ctx*,struct blk_mq_queue_data*) ; 

__attribute__((used)) static blk_status_t FUNC4(struct blk_mq_hw_ctx *hctx,
					    struct request *rq,
					    blk_qc_t *cookie, bool last)
{
	struct request_queue *q = rq->q;
	struct blk_mq_queue_data bd = {
		.rq = rq,
		.last = last,
	};
	blk_qc_t new_cookie;
	blk_status_t ret;

	new_cookie = FUNC2(hctx, rq);

	/*
	 * For OK queue, we are done. For error, caller may kill it.
	 * Any other error (busy), just add it to our list as we
	 * previously would have done.
	 */
	ret = q->mq_ops->queue_rq(hctx, &bd);
	switch (ret) {
	case BLK_STS_OK:
		FUNC1(hctx, false);
		*cookie = new_cookie;
		break;
	case BLK_STS_RESOURCE:
	case BLK_STS_DEV_RESOURCE:
		FUNC1(hctx, true);
		FUNC0(rq);
		break;
	default:
		FUNC1(hctx, false);
		*cookie = BLK_QC_T_NONE;
		break;
	}

	return ret;
}