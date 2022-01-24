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
struct request_queue {int mq_freeze_depth; int /*<<< orphan*/  mq_freeze_lock; int /*<<< orphan*/  q_usage_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct request_queue*) ; 

void FUNC5(struct request_queue *q)
{
	FUNC1(&q->mq_freeze_lock);
	if (++q->mq_freeze_depth == 1) {
		FUNC3(&q->q_usage_counter);
		FUNC2(&q->mq_freeze_lock);
		if (FUNC4(q))
			FUNC0(q, false);
	} else {
		FUNC2(&q->mq_freeze_lock);
	}
}