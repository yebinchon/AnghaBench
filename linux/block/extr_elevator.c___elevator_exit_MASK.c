#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct elevator_queue {int /*<<< orphan*/  kobj; int /*<<< orphan*/  sysfs_lock; TYPE_2__* type; } ;
struct TYPE_3__ {scalar_t__ exit_sched; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct elevator_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct request_queue *q, struct elevator_queue *e)
{
	FUNC2(&e->sysfs_lock);
	if (e->type->ops.exit_sched)
		FUNC0(q, e);
	FUNC3(&e->sysfs_lock);

	FUNC1(&e->kobj);
}