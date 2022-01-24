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
struct request_queue {scalar_t__ poll_nsec; } ;
struct request {int dummy; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  sched_tags; int /*<<< orphan*/  tags; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 scalar_t__ BLK_MQ_POLL_CLASSIC ; 
 int FUNC0 (struct request_queue*,struct blk_mq_hw_ctx*,struct request*) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct request_queue *q,
			       struct blk_mq_hw_ctx *hctx, blk_qc_t cookie)
{
	struct request *rq;

	if (q->poll_nsec == BLK_MQ_POLL_CLASSIC)
		return false;

	if (!FUNC2(cookie))
		rq = FUNC1(hctx->tags, FUNC3(cookie));
	else {
		rq = FUNC1(hctx->sched_tags, FUNC3(cookie));
		/*
		 * With scheduling, if the request has completed, we'll
		 * get a NULL return here, as we clear the sched tag when
		 * that happens. The request still remains valid, like always,
		 * so we should be safe with just the NULL check.
		 */
		if (!rq)
			return false;
	}

	return FUNC0(q, hctx, rq);
}