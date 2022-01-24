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
struct request_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  rpm_status; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPM_RESUMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct request_queue *q)
{
	if (!q->dev)
		return;

	FUNC0(&q->queue_lock);
	q->rpm_status = RPM_RESUMING;
	FUNC1(&q->queue_lock);
}