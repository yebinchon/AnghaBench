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
struct random_ready_callback {struct module* owner; int /*<<< orphan*/  list; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 
 int /*<<< orphan*/  random_ready_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct random_ready_callback *rdy)
{
	unsigned long flags;
	struct module *owner = NULL;

	FUNC3(&random_ready_list_lock, flags);
	if (!FUNC1(&rdy->list)) {
		FUNC0(&rdy->list);
		owner = rdy->owner;
	}
	FUNC4(&random_ready_list_lock, flags);

	FUNC2(owner);
}