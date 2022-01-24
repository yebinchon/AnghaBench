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
struct request_queue {int /*<<< orphan*/  q_usage_counter; struct elevator_queue* elevator; } ;
struct list_head {int dummy; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  dispatch_busy; struct request_queue* queue; } ;
struct blk_mq_ctx {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* insert_requests ) (struct blk_mq_hw_ctx*,struct list_head*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_mq_hw_ctx*,struct blk_mq_ctx*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_hw_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_hw_ctx*,struct list_head*) ; 
 scalar_t__ FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_mq_hw_ctx*,struct list_head*,int) ; 

void FUNC7(struct blk_mq_hw_ctx *hctx,
				  struct blk_mq_ctx *ctx,
				  struct list_head *list, bool run_queue_async)
{
	struct elevator_queue *e;
	struct request_queue *q = hctx->queue;

	/*
	 * blk_mq_sched_insert_requests() is called from flush plug
	 * context only, and hold one usage counter to prevent queue
	 * from being released.
	 */
	FUNC4(&q->q_usage_counter);

	e = hctx->queue->elevator;
	if (e && e->type->ops.insert_requests)
		e->type->ops.insert_requests(hctx, list, false);
	else {
		/*
		 * try to issue requests directly if the hw queue isn't
		 * busy in case of 'none' scheduler, and this way may save
		 * us one extra enqueue & dequeue to sw queue.
		 */
		if (!hctx->dispatch_busy && !e && !run_queue_async) {
			FUNC2(hctx, list);
			if (FUNC3(list))
				goto out;
		}
		FUNC0(hctx, ctx, list);
	}

	FUNC1(hctx, run_queue_async);
 out:
	FUNC5(&q->q_usage_counter);
}