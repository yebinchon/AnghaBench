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
struct request_queue {TYPE_1__* stats; } ;
struct blk_stat_callback {int /*<<< orphan*/  timer; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  enable_accounting; int /*<<< orphan*/  callbacks; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct request_queue *q,
			      struct blk_stat_callback *cb)
{
	FUNC4(&q->stats->lock);
	FUNC2(&cb->list);
	if (FUNC3(&q->stats->callbacks) && !q->stats->enable_accounting)
		FUNC0(QUEUE_FLAG_STATS, q);
	FUNC5(&q->stats->lock);

	FUNC1(&cb->timer);
}