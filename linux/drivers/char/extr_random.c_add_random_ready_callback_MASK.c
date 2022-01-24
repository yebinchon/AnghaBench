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
struct random_ready_callback {int /*<<< orphan*/  list; struct module* owner; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int EALREADY ; 
 int ENOENT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 
 int /*<<< orphan*/  random_ready_list ; 
 int /*<<< orphan*/  random_ready_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct module*) ; 

int FUNC6(struct random_ready_callback *rdy)
{
	struct module *owner;
	unsigned long flags;
	int err = -EALREADY;

	if (FUNC0())
		return err;

	owner = rdy->owner;
	if (!FUNC5(owner))
		return -ENOENT;

	FUNC3(&random_ready_list_lock, flags);
	if (FUNC0())
		goto out;

	owner = NULL;

	FUNC1(&rdy->list, &random_ready_list);
	err = 0;

out:
	FUNC4(&random_ready_list_lock, flags);

	FUNC2(owner);

	return err;
}