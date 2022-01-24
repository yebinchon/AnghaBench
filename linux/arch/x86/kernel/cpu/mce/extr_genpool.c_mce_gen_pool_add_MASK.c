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
struct mce_evt_llist {int /*<<< orphan*/  llnode; int /*<<< orphan*/  mce; } ;
struct mce {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mce*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mce_event_llist ; 
 int /*<<< orphan*/  mce_evt_pool ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mce*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct mce *mce)
{
	struct mce_evt_llist *node;

	if (FUNC0(mce))
		return -EINVAL;

	if (!mce_evt_pool)
		return -EINVAL;

	node = (void *)FUNC1(mce_evt_pool, sizeof(*node));
	if (!node) {
		FUNC4("MCE records pool full!\n");
		return -ENOMEM;
	}

	FUNC3(&node->mce, mce, sizeof(*mce));
	FUNC2(&node->llnode, &mce_event_llist);

	return 0;
}