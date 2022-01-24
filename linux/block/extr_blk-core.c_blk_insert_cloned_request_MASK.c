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
struct request_queue {int dummy; } ;
struct request {TYPE_1__* rq_disk; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 scalar_t__ FUNC1 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int) ; 
 scalar_t__ FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

blk_status_t FUNC6(struct request_queue *q, struct request *rq)
{
	if (FUNC1(q, rq))
		return BLK_STS_IOERR;

	if (rq->rq_disk &&
	    FUNC5(&rq->rq_disk->part0, FUNC4(rq)))
		return BLK_STS_IOERR;

	if (FUNC3(q))
		FUNC0(rq, true);

	/*
	 * Since we have a scheduler attached on the top device,
	 * bypass a potential scheduler on the bottom device for
	 * insert.
	 */
	return FUNC2(rq, true);
}