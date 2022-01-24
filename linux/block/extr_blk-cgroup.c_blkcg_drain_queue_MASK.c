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
struct request_queue {int /*<<< orphan*/  root_blkg; int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct request_queue *q)
{
	FUNC1(&q->queue_lock);

	/*
	 * @q could be exiting and already have destroyed all blkgs as
	 * indicated by NULL root_blkg.  If so, don't confuse policies.
	 */
	if (!q->root_blkg)
		return;

	FUNC0(q);
}