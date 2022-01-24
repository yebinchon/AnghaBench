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
struct request {int rq_flags; int /*<<< orphan*/  queuelist; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  dispatch; } ;

/* Variables and functions */
 int RQF_FLUSH_SEQ ; 
 int RQF_SORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct blk_mq_hw_ctx *hctx,
				       bool has_sched,
				       struct request *rq)
{
	/* dispatch flush rq directly */
	if (rq->rq_flags & RQF_FLUSH_SEQ) {
		FUNC1(&hctx->lock);
		FUNC0(&rq->queuelist, &hctx->dispatch);
		FUNC2(&hctx->lock);
		return true;
	}

	if (has_sched)
		rq->rq_flags |= RQF_SORTED;

	return false;
}