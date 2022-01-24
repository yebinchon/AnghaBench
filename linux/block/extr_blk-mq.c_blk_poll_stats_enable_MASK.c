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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct request_queue *q)
{
	if (FUNC2(QUEUE_FLAG_POLL_STATS, &q->queue_flags) ||
	    FUNC0(QUEUE_FLAG_POLL_STATS, q))
		return true;
	FUNC1(q, q->poll_cb);
	return false;
}