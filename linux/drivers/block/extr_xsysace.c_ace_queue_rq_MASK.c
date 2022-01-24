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
struct request {int /*<<< orphan*/  queuelist; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
struct ace_device {int /*<<< orphan*/  fsm_tasklet; int /*<<< orphan*/  lock; int /*<<< orphan*/  rq_list; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {struct ace_device* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC6(struct blk_mq_hw_ctx *hctx,
				 const struct blk_mq_queue_data *bd)
{
	struct ace_device *ace = hctx->queue->queuedata;
	struct request *req = bd->rq;

	if (FUNC1(req)) {
		FUNC0(req);
		return BLK_STS_IOERR;
	}

	FUNC3(&ace->lock);
	FUNC2(&req->queuelist, &ace->rq_list);
	FUNC4(&ace->lock);

	FUNC5(&ace->fsm_tasklet);
	return BLK_STS_OK;
}