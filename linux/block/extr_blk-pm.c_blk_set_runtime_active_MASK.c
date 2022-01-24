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
struct request_queue {int /*<<< orphan*/  queue_lock; scalar_t__ dev; int /*<<< orphan*/  rpm_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPM_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct request_queue *q)
{
	if (q->dev) {
		FUNC2(&q->queue_lock);
		q->rpm_status = RPM_ACTIVE;
		FUNC1(q->dev);
		FUNC0(q->dev);
		FUNC3(&q->queue_lock);
	}
}