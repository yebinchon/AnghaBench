#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcd_unit {int /*<<< orphan*/  rq_list; } ;
struct blk_mq_queue_data {TYPE_2__* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_5__ {int /*<<< orphan*/  queuelist; } ;
struct TYPE_4__ {struct pcd_unit* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcd_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC6(struct blk_mq_hw_ctx *hctx,
				 const struct blk_mq_queue_data *bd)
{
	struct pcd_unit *cd = hctx->queue->queuedata;

	if (FUNC3(bd->rq) != READ) {
		FUNC0(bd->rq);
		return BLK_STS_IOERR;
	}

	FUNC4(&pcd_lock);
	FUNC1(&bd->rq->queuelist, &cd->rq_list);
	FUNC2();
	FUNC5(&pcd_lock);

	return BLK_STS_OK;
}