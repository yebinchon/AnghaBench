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
struct request_queue {int /*<<< orphan*/  queue_flags; TYPE_2__* mq_ops; } ;
struct request {int /*<<< orphan*/  ipi_list; TYPE_1__* mq_ctx; struct request_queue* q; } ;
struct list_head {int /*<<< orphan*/ * next; } ;
struct TYPE_4__ {int /*<<< orphan*/  complete; } ;
struct TYPE_3__ {int cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_SOFTIRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QUEUE_FLAG_SAME_COMP ; 
 int /*<<< orphan*/  QUEUE_FLAG_SAME_FORCE ; 
 int /*<<< orphan*/  blk_cpu_done ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct list_head* FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct request *req)
{
	struct request_queue *q = req->q;
	int cpu, ccpu = req->mq_ctx->cpu;
	unsigned long flags;
	bool shared = false;

	FUNC0(!q->mq_ops->complete);

	FUNC4(flags);
	cpu = FUNC7();

	/*
	 * Select completion CPU
	 */
	if (FUNC8(QUEUE_FLAG_SAME_COMP, &q->queue_flags) && ccpu != -1) {
		if (!FUNC8(QUEUE_FLAG_SAME_FORCE, &q->queue_flags))
			shared = FUNC1(cpu, ccpu);
	} else
		ccpu = cpu;

	/*
	 * If current CPU and requested CPU share a cache, run the softirq on
	 * the current CPU. One might concern this is just like
	 * QUEUE_FLAG_SAME_FORCE, but actually not. blk_complete_request() is
	 * running in interrupt handler, and currently I/O controller doesn't
	 * support multiple interrupts, so current CPU is unique actually. This
	 * avoids IPI sending from current CPU to the first CPU of a group.
	 */
	if (ccpu == cpu || shared) {
		struct list_head *list;
do_local:
		list = FUNC9(&blk_cpu_done);
		FUNC2(&req->ipi_list, list);

		/*
		 * if the list only contains our just added request,
		 * signal a raise of the softirq. If there are already
		 * entries there, someone already raised the irq but it
		 * hasn't run yet.
		 */
		if (list->next == &req->ipi_list)
			FUNC6(BLOCK_SOFTIRQ);
	} else if (FUNC5(ccpu, req))
		goto do_local;

	FUNC3(flags);
}