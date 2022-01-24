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
struct pf_unit {int /*<<< orphan*/  rq_list; } ;
struct blk_mq_queue_data {TYPE_2__* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  queuelist; } ;
struct TYPE_3__ {struct pf_unit* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  pf_spin_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC4(struct blk_mq_hw_ctx *hctx,
				const struct blk_mq_queue_data *bd)
{
	struct pf_unit *pf = hctx->queue->queuedata;

	FUNC2(&pf_spin_lock);
	FUNC0(&bd->rq->queuelist, &pf->rq_list);
	FUNC1();
	FUNC3(&pf_spin_lock);

	return BLK_STS_OK;
}