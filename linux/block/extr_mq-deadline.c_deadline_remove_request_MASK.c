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
struct request_queue {struct request* last_merge; TYPE_1__* elevator; } ;
struct request {int /*<<< orphan*/  rb_node; int /*<<< orphan*/  queuelist; } ;
struct deadline_data {int dummy; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct deadline_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct request_queue *q, struct request *rq)
{
	struct deadline_data *dd = q->elevator->elevator_data;

	FUNC3(&rq->queuelist);

	/*
	 * We might not be on the rbtree, if we are doing an insert merge
	 */
	if (!FUNC0(&rq->rb_node))
		FUNC1(dd, rq);

	FUNC2(q, rq);
	if (q->last_merge == rq)
		q->last_merge = NULL;
}