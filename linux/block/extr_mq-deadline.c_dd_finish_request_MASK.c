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
struct request_queue {TYPE_1__* elevator; } ;
struct request {int /*<<< orphan*/  mq_hctx; struct request_queue* q; } ;
struct deadline_data {int /*<<< orphan*/  zone_lock; int /*<<< orphan*/ * fifo_list; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;

/* Variables and functions */
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct request *rq)
{
	struct request_queue *q = rq->q;

	if (FUNC1(q)) {
		struct deadline_data *dd = q->elevator->elevator_data;
		unsigned long flags;

		FUNC4(&dd->zone_lock, flags);
		FUNC2(rq);
		if (!FUNC3(&dd->fifo_list[WRITE]))
			FUNC0(rq->mq_hctx);
		FUNC5(&dd->zone_lock, flags);
	}
}