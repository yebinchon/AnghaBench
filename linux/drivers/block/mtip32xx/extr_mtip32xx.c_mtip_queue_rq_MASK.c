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
struct request {int dummy; } ;
struct mtip_cmd {int dummy; } ;
struct driver_data {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {struct driver_data* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 struct mtip_cmd* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct driver_data*) ; 
 scalar_t__ FUNC4 (struct driver_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_mq_hw_ctx*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*,struct request*,struct mtip_cmd*,struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct blk_mq_hw_ctx*,struct request*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC9(struct blk_mq_hw_ctx *hctx,
			 const struct blk_mq_queue_data *bd)
{
	struct driver_data *dd = hctx->queue->queuedata;
	struct request *rq = bd->rq;
	struct mtip_cmd *cmd = FUNC0(rq);

	if (FUNC2(rq))
		return FUNC7(hctx, rq);

	if (FUNC8(FUNC5(hctx, rq)))
		return BLK_STS_DEV_RESOURCE;

	if (FUNC3(dd) || FUNC4(dd, rq))
		return BLK_STS_IOERR;

	FUNC1(rq);

	FUNC6(dd, rq, cmd, hctx);
	return BLK_STS_OK;
}