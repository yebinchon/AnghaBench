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
struct bufferevent_rate_limit_group {int /*<<< orphan*/  members; int /*<<< orphan*/  n_members; int /*<<< orphan*/  weakrand_seed; } ;
struct bufferevent_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  next_in_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bufferevent_private* FUNC2 (int /*<<< orphan*/ *) ; 
 struct bufferevent_private* FUNC3 (struct bufferevent_private*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* rate_limiting ; 

__attribute__((used)) static struct bufferevent_private *
FUNC5(struct bufferevent_rate_limit_group *group)
{
	int which;
	struct bufferevent_private *bev;

	/* requires group lock */

	if (!group->n_members)
		return NULL;

	FUNC0(! FUNC1(&group->members));

	which = FUNC4(&group->weakrand_seed, group->n_members);

	bev = FUNC2(&group->members);
	while (which--)
		bev = FUNC3(bev, rate_limiting->next_in_group);

	return bev;
}