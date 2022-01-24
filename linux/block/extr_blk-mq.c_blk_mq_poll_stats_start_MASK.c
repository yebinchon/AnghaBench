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
struct request_queue {int /*<<< orphan*/  poll_cb; int /*<<< orphan*/  queue_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_POLL_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct request_queue *q)
{
	/*
	 * We don't arm the callback if polling stats are not enabled or the
	 * callback is already active.
	 */
	if (!FUNC2(QUEUE_FLAG_POLL_STATS, &q->queue_flags) ||
	    FUNC1(q->poll_cb))
		return;

	FUNC0(q->poll_cb, 100);
}