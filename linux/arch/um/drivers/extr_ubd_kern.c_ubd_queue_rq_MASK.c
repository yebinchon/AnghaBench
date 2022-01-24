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
typedef  int u64 ;
struct ubd {int /*<<< orphan*/  lock; } ;
struct request {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef  int blk_status_t ;
struct TYPE_2__ {struct ubd* queuedata; } ;

/* Variables and functions */
 int BLK_STS_DEV_RESOURCE ; 
 int BLK_STS_NOTSUPP ; 
 int BLK_STS_OK ; 
 int BLK_STS_RESOURCE ; 
 int ENOMEM ; 
#define  REQ_OP_DISCARD 132 
#define  REQ_OP_FLUSH 131 
#define  REQ_OP_READ 130 
#define  REQ_OP_WRITE 129 
#define  REQ_OP_WRITE_ZEROES 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 (struct blk_mq_hw_ctx*,struct request*) ; 
 int FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct blk_mq_hw_ctx*,struct request*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC8(struct blk_mq_hw_ctx *hctx,
				 const struct blk_mq_queue_data *bd)
{
	struct ubd *ubd_dev = hctx->queue->queuedata;
	struct request *req = bd->rq;
	int ret = 0, res = BLK_STS_OK;

	FUNC1(req);

	FUNC5(&ubd_dev->lock);

	switch (FUNC4(req)) {
	/* operations with no lentgth/offset arguments */
	case REQ_OP_FLUSH:
		ret = FUNC7(hctx, req, 0, NULL);
		break;
	case REQ_OP_READ:
	case REQ_OP_WRITE:
		ret = FUNC3(hctx, req);
		break;
	case REQ_OP_DISCARD:
	case REQ_OP_WRITE_ZEROES:
		ret = FUNC7(hctx, req, (u64)FUNC2(req) << 9, NULL);
		break;
	default:
		FUNC0(1);
		res = BLK_STS_NOTSUPP;
	}

	FUNC6(&ubd_dev->lock);

	if (ret < 0) {
		if (ret == -ENOMEM)
			res = BLK_STS_RESOURCE;
		else
			res = BLK_STS_DEV_RESOURCE;
	}

	return res;
}