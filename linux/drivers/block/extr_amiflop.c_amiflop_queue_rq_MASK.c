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
struct request {TYPE_1__* rq_disk; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct amiga_floppy_struct {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {struct amiga_floppy_struct* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  amiflop_lock ; 
 int /*<<< orphan*/  FUNC0 (struct amiga_floppy_struct*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC7(struct blk_mq_hw_ctx *hctx,
				     const struct blk_mq_queue_data *bd)
{
	struct request *rq = bd->rq;
	struct amiga_floppy_struct *floppy = rq->rq_disk->private_data;
	blk_status_t err;

	if (!FUNC5(&amiflop_lock))
		return BLK_STS_DEV_RESOURCE;

	FUNC2(rq);

	do {
		err = FUNC0(floppy, rq);
	} while (FUNC4(rq, err, FUNC3(rq)));
	FUNC1(rq, err);

	FUNC6(&amiflop_lock);
	return BLK_STS_OK;
}