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
struct request_queue {int /*<<< orphan*/  node; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {int /*<<< orphan*/  hash; int /*<<< orphan*/  sysfs_lock; int /*<<< orphan*/  kobj; struct elevator_type* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  elv_ktype ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct elevator_queue* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

struct elevator_queue *FUNC5(struct request_queue *q,
				  struct elevator_type *e)
{
	struct elevator_queue *eq;

	eq = FUNC2(sizeof(*eq), GFP_KERNEL, q->node);
	if (FUNC4(!eq))
		return NULL;

	eq->type = e;
	FUNC1(&eq->kobj, &elv_ktype);
	FUNC3(&eq->sysfs_lock);
	FUNC0(eq->hash);

	return eq;
}