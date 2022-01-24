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
struct blkfront_ring_info {int /*<<< orphan*/  ring_lock; int /*<<< orphan*/  dev_info; int /*<<< orphan*/  ring; } ;
struct blkfront_info {int nr_rings; struct blkfront_ring_info* rinfo; } ;
struct blk_mq_queue_data {int /*<<< orphan*/  rq; } ;
struct blk_mq_hw_ctx {int queue_num; TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {struct blkfront_info* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_mq_hw_ctx*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct blkfront_ring_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct blkfront_ring_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static blk_status_t FUNC9(struct blk_mq_hw_ctx *hctx,
			  const struct blk_mq_queue_data *qd)
{
	unsigned long flags;
	int qid = hctx->queue_num;
	struct blkfront_info *info = hctx->queue->queuedata;
	struct blkfront_ring_info *rinfo = NULL;

	FUNC0(info->nr_rings <= qid);
	rinfo = &info->rinfo[qid];
	FUNC2(qd->rq);
	FUNC7(&rinfo->ring_lock, flags);
	if (FUNC1(&rinfo->ring))
		goto out_busy;

	if (FUNC5(qd->rq, rinfo->dev_info))
		goto out_err;

	if (FUNC4(qd->rq, rinfo))
		goto out_busy;

	FUNC6(rinfo);
	FUNC8(&rinfo->ring_lock, flags);
	return BLK_STS_OK;

out_err:
	FUNC8(&rinfo->ring_lock, flags);
	return BLK_STS_IOERR;

out_busy:
	FUNC3(hctx);
	FUNC8(&rinfo->ring_lock, flags);
	return BLK_STS_DEV_RESOURCE;
}