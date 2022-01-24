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
struct request_queue {TYPE_1__* elevator; int /*<<< orphan*/  sysfs_lock; } ;
struct elevator_type {int /*<<< orphan*/  elevator_name; } ;
struct TYPE_2__ {scalar_t__ registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,char*,...) ; 
 int FUNC1 (struct request_queue*,struct elevator_type*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,TYPE_1__*) ; 
 int FUNC3 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct request_queue *q,
			      struct elevator_type *new_e)
{
	int ret;

	FUNC6(&q->sysfs_lock);

	if (q->elevator) {
		if (q->elevator->registered)
			FUNC4(q);

		FUNC5(q);
		FUNC2(q, q->elevator);
	}

	ret = FUNC1(q, new_e);
	if (ret)
		goto out;

	if (new_e) {
		ret = FUNC3(q, true);
		if (ret) {
			FUNC2(q, q->elevator);
			goto out;
		}
	}

	if (new_e)
		FUNC0(q, "elv switch: %s", new_e->elevator_name);
	else
		FUNC0(q, "elv switch: none");

out:
	return ret;
}