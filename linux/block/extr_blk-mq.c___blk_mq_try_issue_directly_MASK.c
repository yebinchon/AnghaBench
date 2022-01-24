#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct request_queue {scalar_t__ elevator; } ;
struct request {struct request_queue* q; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct blk_mq_hw_ctx*,struct request*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*,int) ; 
 scalar_t__ FUNC6 (struct request_queue*) ; 

__attribute__((used)) static blk_status_t FUNC7(struct blk_mq_hw_ctx *hctx,
						struct request *rq,
						blk_qc_t *cookie,
						bool bypass_insert, bool last)
{
	struct request_queue *q = rq->q;
	bool run_queue = true;

	/*
	 * RCU or SRCU read lock is needed before checking quiesced flag.
	 *
	 * When queue is stopped or quiesced, ignore 'bypass_insert' from
	 * blk_mq_request_issue_directly(), and return BLK_STS_OK to caller,
	 * and avoid driver to try to dispatch again.
	 */
	if (FUNC3(hctx) || FUNC6(q)) {
		run_queue = false;
		bypass_insert = false;
		goto insert;
	}

	if (q->elevator && !bypass_insert)
		goto insert;

	if (!FUNC1(hctx))
		goto insert;

	if (!FUNC2(rq)) {
		FUNC4(hctx);
		goto insert;
	}

	return FUNC0(hctx, rq, cookie, last);
insert:
	if (bypass_insert)
		return BLK_STS_RESOURCE;

	FUNC5(rq, run_queue);
	return BLK_STS_OK;
}