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
struct request_queue {TYPE_1__* mq_ops; } ;
struct request {int dummy; } ;
typedef  unsigned int blk_mq_req_flags_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* initialize_rq_fn ) (struct request*) ;} ;

/* Variables and functions */
 unsigned int BLK_MQ_REQ_NOWAIT ; 
 unsigned int BLK_MQ_REQ_PREEMPT ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 unsigned int REQ_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct request* FUNC2 (struct request_queue*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 

struct request *FUNC4(struct request_queue *q, unsigned int op,
				blk_mq_req_flags_t flags)
{
	struct request *req;

	FUNC1(op & REQ_NOWAIT);
	FUNC1(flags & ~(BLK_MQ_REQ_NOWAIT | BLK_MQ_REQ_PREEMPT));

	req = FUNC2(q, op, flags);
	if (!FUNC0(req) && q->mq_ops->initialize_rq_fn)
		q->mq_ops->initialize_rq_fn(req);

	return req;
}