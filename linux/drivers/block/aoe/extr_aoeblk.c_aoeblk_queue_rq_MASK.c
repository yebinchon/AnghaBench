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
struct blk_mq_queue_data {TYPE_2__* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
struct aoedev {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  rq_list; int /*<<< orphan*/  aoeminor; int /*<<< orphan*/  aoemajor; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  queuelist; } ;
struct TYPE_3__ {struct aoedev* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int DEVFL_UP ; 
 int /*<<< orphan*/  FUNC0 (struct aoedev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC6(struct blk_mq_hw_ctx *hctx,
				    const struct blk_mq_queue_data *bd)
{
	struct aoedev *d = hctx->queue->queuedata;

	FUNC4(&d->lock);

	if ((d->flags & DEVFL_UP) == 0) {
		FUNC3("aoe: device %ld.%d is not up\n",
			d->aoemajor, d->aoeminor);
		FUNC5(&d->lock);
		FUNC1(bd->rq);
		return BLK_STS_IOERR;
	}

	FUNC2(&bd->rq->queuelist, &d->rq_list);
	FUNC0(d);
	FUNC5(&d->lock);
	return BLK_STS_OK;
}