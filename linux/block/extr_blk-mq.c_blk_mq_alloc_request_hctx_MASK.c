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
struct request_queue {unsigned int nr_hw_queues; TYPE_1__** queue_hw_ctx; } ;
struct request {int dummy; } ;
struct blk_mq_alloc_data {int flags; unsigned int cmd_flags; int /*<<< orphan*/  ctx; TYPE_1__* hctx; } ;
typedef  int blk_mq_req_flags_t ;
struct TYPE_2__ {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int BLK_MQ_REQ_NOWAIT ; 
 int EINVAL ; 
 int EIO ; 
 struct request* FUNC0 (int) ; 
 int EWOULDBLOCK ; 
 int EXDEV ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,unsigned int) ; 
 struct request* FUNC3 (struct request_queue*,int /*<<< orphan*/ *,struct blk_mq_alloc_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct request *FUNC8(struct request_queue *q,
	unsigned int op, blk_mq_req_flags_t flags, unsigned int hctx_idx)
{
	struct blk_mq_alloc_data alloc_data = { .flags = flags, .cmd_flags = op };
	struct request *rq;
	unsigned int cpu;
	int ret;

	/*
	 * If the tag allocator sleeps we could get an allocation for a
	 * different hardware context.  No need to complicate the low level
	 * allocator for this for the rare use case of a command tied to
	 * a specific queue.
	 */
	if (FUNC1(!(flags & BLK_MQ_REQ_NOWAIT)))
		return FUNC0(-EINVAL);

	if (hctx_idx >= q->nr_hw_queues)
		return FUNC0(-EIO);

	ret = FUNC5(q, flags);
	if (ret)
		return FUNC0(ret);

	/*
	 * Check if the hardware context is actually mapped to anything.
	 * If not tell the caller that it should skip this queue.
	 */
	alloc_data.hctx = q->queue_hw_ctx[hctx_idx];
	if (!FUNC4(alloc_data.hctx)) {
		FUNC6(q);
		return FUNC0(-EXDEV);
	}
	cpu = FUNC7(alloc_data.hctx->cpumask, cpu_online_mask);
	alloc_data.ctx = FUNC2(q, cpu);

	rq = FUNC3(q, NULL, &alloc_data);
	FUNC6(q);

	if (!rq)
		return FUNC0(-EWOULDBLOCK);

	return rq;
}