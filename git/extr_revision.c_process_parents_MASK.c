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
struct rev_info {scalar_t__ first_parent_only; scalar_t__ sources; scalar_t__ exclude_promisor_objects; scalar_t__ ignore_missing_links; scalar_t__ no_walk; int /*<<< orphan*/  include_check_data; int /*<<< orphan*/  (* include_check ) (struct commit*,int /*<<< orphan*/ ) ;} ;
struct prio_queue {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 int ADDED ; 
 int SEEN ; 
 unsigned int SYMMETRIC_LEFT ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,struct commit_list**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*) ; 
 scalar_t__ FUNC3 (struct commit*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct prio_queue*,struct commit*) ; 
 char** FUNC5 (scalar_t__,struct commit*) ; 
 int /*<<< orphan*/  FUNC6 (struct commit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rev_info*,struct commit*) ; 

__attribute__((used)) static int FUNC8(struct rev_info *revs, struct commit *commit,
			   struct commit_list **list, struct prio_queue *queue)
{
	struct commit_list *parent = commit->parents;
	unsigned left_flag;

	if (commit->object.flags & ADDED)
		return 0;
	commit->object.flags |= ADDED;

	if (revs->include_check &&
	    !revs->include_check(commit, revs->include_check_data))
		return 0;

	/*
	 * If the commit is uninteresting, don't try to
	 * prune parents - we want the maximal uninteresting
	 * set.
	 *
	 * Normally we haven't parsed the parent
	 * yet, so we won't have a parent of a parent
	 * here. However, it may turn out that we've
	 * reached this commit some other way (where it
	 * wasn't uninteresting), in which case we need
	 * to mark its parents recursively too..
	 */
	if (commit->object.flags & UNINTERESTING) {
		while (parent) {
			struct commit *p = parent->item;
			parent = parent->next;
			if (p)
				p->object.flags |= UNINTERESTING;
			if (FUNC3(p, 1) < 0)
				continue;
			if (p->parents)
				FUNC2(p);
			if (p->object.flags & SEEN)
				continue;
			p->object.flags |= SEEN;
			if (list)
				FUNC0(p, list);
			if (queue)
				FUNC4(queue, p);
		}
		return 0;
	}

	/*
	 * Ok, the commit wasn't uninteresting. Try to
	 * simplify the commit history and find the parent
	 * that has no differences in the path set if one exists.
	 */
	FUNC7(revs, commit);

	if (revs->no_walk)
		return 0;

	left_flag = (commit->object.flags & SYMMETRIC_LEFT);

	for (parent = commit->parents; parent; parent = parent->next) {
		struct commit *p = parent->item;
		int gently = revs->ignore_missing_links ||
			     revs->exclude_promisor_objects;
		if (FUNC3(p, gently) < 0) {
			if (revs->exclude_promisor_objects &&
			    FUNC1(&p->object.oid)) {
				if (revs->first_parent_only)
					break;
				continue;
			}
			return -1;
		}
		if (revs->sources) {
			char **slot = FUNC5(revs->sources, p);

			if (!*slot)
				*slot = *FUNC5(revs->sources, commit);
		}
		p->object.flags |= left_flag;
		if (!(p->object.flags & SEEN)) {
			p->object.flags |= SEEN;
			if (list)
				FUNC0(p, list);
			if (queue)
				FUNC4(queue, p);
		}
		if (revs->first_parent_only)
			break;
	}
	return 0;
}