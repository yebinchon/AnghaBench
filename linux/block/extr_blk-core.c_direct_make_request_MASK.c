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
struct request_queue {int /*<<< orphan*/  (* make_request_fn ) (struct request_queue*,struct bio*) ;} ;
struct bio {int bi_opf; int /*<<< orphan*/  bi_status; TYPE_1__* bi_disk; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;
struct TYPE_2__ {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_REQ_NOWAIT ; 
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  BLK_STS_AGAIN ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int REQ_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,struct bio*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

blk_qc_t FUNC7(struct bio *bio)
{
	struct request_queue *q = bio->bi_disk->queue;
	bool nowait = bio->bi_opf & REQ_NOWAIT;
	blk_qc_t ret;

	if (!FUNC4(bio))
		return BLK_QC_T_NONE;

	if (FUNC6(FUNC2(q, nowait ? BLK_MQ_REQ_NOWAIT : 0))) {
		if (nowait && !FUNC1(q))
			bio->bi_status = BLK_STS_AGAIN;
		else
			bio->bi_status = BLK_STS_IOERR;
		FUNC0(bio);
		return BLK_QC_T_NONE;
	}

	ret = q->make_request_fn(q, bio);
	FUNC3(q);
	return ret;
}