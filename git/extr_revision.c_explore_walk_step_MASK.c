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
struct topo_walk_info {int /*<<< orphan*/  explore_queue; int /*<<< orphan*/  author_date; } ;
struct rev_info {scalar_t__ sort_order; int max_age; struct topo_walk_info* topo_walk_info; } ;
struct commit_list {int /*<<< orphan*/  item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {int date; struct commit_list* parents; TYPE_1__ object; } ;

/* Variables and functions */
 scalar_t__ REV_SORT_BY_AUTHOR_DATE ; 
 int /*<<< orphan*/  TOPO_WALK_EXPLORED ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct commit*) ; 
 scalar_t__ FUNC1 (struct commit*,int) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rev_info*,struct commit*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rev_info *revs)
{
	struct topo_walk_info *info = revs->topo_walk_info;
	struct commit_list *p;
	struct commit *c = FUNC2(&info->explore_queue);

	if (!c)
		return;

	if (FUNC1(c, 1) < 0)
		return;

	if (revs->sort_order == REV_SORT_BY_AUTHOR_DATE)
		FUNC4(&info->author_date, c);

	if (revs->max_age != -1 && (c->date < revs->max_age))
		c->object.flags |= UNINTERESTING;

	if (FUNC3(revs, c, NULL, NULL) < 0)
		return;

	if (c->object.flags & UNINTERESTING)
		FUNC0(c);

	for (p = c->parents; p; p = p->next)
		FUNC5(&info->explore_queue, p->item, TOPO_WALK_EXPLORED);
}