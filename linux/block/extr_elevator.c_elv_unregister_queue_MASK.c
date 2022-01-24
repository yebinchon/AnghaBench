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
struct request_queue {struct elevator_queue* elevator; } ;
struct elevator_queue {scalar_t__ registered; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 

void FUNC3(struct request_queue *q)
{
	if (q) {
		struct elevator_queue *e = q->elevator;

		FUNC1(&e->kobj, KOBJ_REMOVE);
		FUNC0(&e->kobj);

		e->registered = 0;
		/* Re-enable throttling in case elevator disabled it */
		FUNC2(q);
	}
}