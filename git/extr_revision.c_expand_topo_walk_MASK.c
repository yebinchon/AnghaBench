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
struct topo_walk_info {scalar_t__ min_generation; int /*<<< orphan*/  topo_queue; int /*<<< orphan*/  indegree; } ;
struct rev_info {scalar_t__ first_parent_only; int /*<<< orphan*/  ignore_missing_links; struct topo_walk_info* topo_walk_info; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {scalar_t__ generation; TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ *,struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct commit*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct commit*) ; 
 scalar_t__ FUNC6 (struct rev_info*,struct commit*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rev_info *revs, struct commit *commit)
{
	struct commit_list *p;
	struct topo_walk_info *info = revs->topo_walk_info;
	if (FUNC6(revs, commit, NULL, NULL) < 0) {
		if (!revs->ignore_missing_links)
			FUNC1("Failed to traverse parents of commit %s",
			    FUNC3(&commit->object.oid));
	}

	for (p = commit->parents; p; p = p->next) {
		struct commit *parent = p->item;
		int *pi;

		if (parent->object.flags & UNINTERESTING)
			continue;

		if (FUNC4(parent, 1) < 0)
			continue;

		if (parent->generation < info->min_generation) {
			info->min_generation = parent->generation;
			FUNC0(revs, info->min_generation);
		}

		pi = FUNC2(&info->indegree, parent);

		(*pi)--;
		if (*pi == 1)
			FUNC5(&info->topo_queue, parent);

		if (revs->first_parent_only)
			return;
	}
}