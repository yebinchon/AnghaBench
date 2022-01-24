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
struct request_queue {TYPE_1__* mq_ops; struct blk_mq_hw_ctx** queue_hw_ctx; int /*<<< orphan*/  queue_flags; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  poll_success; int /*<<< orphan*/  poll_invoked; int /*<<< orphan*/  poll_considered; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;
struct TYPE_5__ {long state; scalar_t__ plug; } ;
struct TYPE_4__ {int (* poll ) (struct blk_mq_hw_ctx*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_POLL ; 
 long TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct request_queue*,struct blk_mq_hw_ctx*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (long,TYPE_2__*) ; 
 int FUNC8 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct request_queue *q, blk_qc_t cookie, bool spin)
{
	struct blk_mq_hw_ctx *hctx;
	long state;

	if (!FUNC4(cookie) ||
	    !FUNC9(QUEUE_FLAG_POLL, &q->queue_flags))
		return 0;

	if (current->plug)
		FUNC1(current->plug, false);

	hctx = q->queue_hw_ctx[FUNC3(cookie)];

	/*
	 * If we sleep, have the caller restart the poll loop to reset
	 * the state. Like for the other success return cases, the
	 * caller is responsible for checking if the IO completed. If
	 * the IO isn't complete, we'll get called again and will go
	 * straight to the busy poll loop.
	 */
	if (FUNC2(q, hctx, cookie))
		return 1;

	hctx->poll_considered++;

	state = current->state;
	do {
		int ret;

		hctx->poll_invoked++;

		ret = q->mq_ops->poll(hctx);
		if (ret > 0) {
			hctx->poll_success++;
			FUNC0(TASK_RUNNING);
			return ret;
		}

		if (FUNC7(state, current))
			FUNC0(TASK_RUNNING);

		if (current->state == TASK_RUNNING)
			return 1;
		if (ret < 0 || !spin)
			break;
		FUNC5();
	} while (!FUNC6());

	FUNC0(TASK_RUNNING);
	return 0;
}