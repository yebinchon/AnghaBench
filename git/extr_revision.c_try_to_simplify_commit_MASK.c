#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct treesame_state {int* treesame; } ;
struct TYPE_3__ {scalar_t__ name; } ;
struct rev_info {int /*<<< orphan*/  remove_empty_trees; int /*<<< orphan*/  simplify_history; TYPE_1__ treesame; scalar_t__ first_parent_only; int /*<<< orphan*/  dense; int /*<<< orphan*/  prune; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_2__ object; struct commit_list* parents; } ;

/* Variables and functions */
#define  REV_TREE_DIFFERENT 131 
#define  REV_TREE_NEW 130 
#define  REV_TREE_OLD 129 
#define  REV_TREE_SAME 128 
 int TREESAME ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*) ; 
 struct treesame_state* FUNC2 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct commit*) ; 
 scalar_t__ FUNC5 (struct commit*) ; 
 int FUNC6 (struct rev_info*,struct commit*,struct commit*) ; 
 scalar_t__ FUNC7 (struct rev_info*,struct commit*) ; 

__attribute__((used)) static void FUNC8(struct rev_info *revs, struct commit *commit)
{
	struct commit_list **pp, *parent;
	struct treesame_state *ts = NULL;
	int relevant_change = 0, irrelevant_change = 0;
	int relevant_parents, nth_parent;

	/*
	 * If we don't do pruning, everything is interesting
	 */
	if (!revs->prune)
		return;

	if (!FUNC1(commit))
		return;

	if (!commit->parents) {
		if (FUNC7(revs, commit))
			commit->object.flags |= TREESAME;
		return;
	}

	/*
	 * Normal non-merge commit? If we don't want to make the
	 * history dense, we consider it always to be a change..
	 */
	if (!revs->dense && !commit->parents->next)
		return;

	for (pp = &commit->parents, nth_parent = 0, relevant_parents = 0;
	     (parent = *pp) != NULL;
	     pp = &parent->next, nth_parent++) {
		struct commit *p = parent->item;
		if (FUNC5(p))
			relevant_parents++;

		if (nth_parent == 1) {
			/*
			 * This our second loop iteration - so we now know
			 * we're dealing with a merge.
			 *
			 * Do not compare with later parents when we care only about
			 * the first parent chain, in order to avoid derailing the
			 * traversal to follow a side branch that brought everything
			 * in the path we are limited to by the pathspec.
			 */
			if (revs->first_parent_only)
				break;
			/*
			 * If this will remain a potentially-simplifiable
			 * merge, remember per-parent treesame if needed.
			 * Initialise the array with the comparison from our
			 * first iteration.
			 */
			if (revs->treesame.name &&
			    !revs->simplify_history &&
			    !(commit->object.flags & UNINTERESTING)) {
				ts = FUNC2(revs, commit);
				if (!(irrelevant_change || relevant_change))
					ts->treesame[0] = 1;
			}
		}
		if (FUNC4(p) < 0)
			FUNC0("cannot simplify commit %s (because of %s)",
			    FUNC3(&commit->object.oid),
			    FUNC3(&p->object.oid));
		switch (FUNC6(revs, p, commit)) {
		case REV_TREE_SAME:
			if (!revs->simplify_history || !FUNC5(p)) {
				/* Even if a merge with an uninteresting
				 * side branch brought the entire change
				 * we are interested in, we do not want
				 * to lose the other branches of this
				 * merge, so we just keep going.
				 */
				if (ts)
					ts->treesame[nth_parent] = 1;
				continue;
			}
			parent->next = NULL;
			commit->parents = parent;
			commit->object.flags |= TREESAME;
			return;

		case REV_TREE_NEW:
			if (revs->remove_empty_trees &&
			    FUNC7(revs, p)) {
				/* We are adding all the specified
				 * paths from this parent, so the
				 * history beyond this parent is not
				 * interesting.  Remove its parents
				 * (they are grandparents for us).
				 * IOW, we pretend this parent is a
				 * "root" commit.
				 */
				if (FUNC4(p) < 0)
					FUNC0("cannot simplify commit %s (invalid %s)",
					    FUNC3(&commit->object.oid),
					    FUNC3(&p->object.oid));
				p->parents = NULL;
			}
		/* fallthrough */
		case REV_TREE_OLD:
		case REV_TREE_DIFFERENT:
			if (FUNC5(p))
				relevant_change = 1;
			else
				irrelevant_change = 1;
			continue;
		}
		FUNC0("bad tree compare for commit %s", FUNC3(&commit->object.oid));
	}

	/*
	 * TREESAME is straightforward for single-parent commits. For merge
	 * commits, it is most useful to define it so that "irrelevant"
	 * parents cannot make us !TREESAME - if we have any relevant
	 * parents, then we only consider TREESAMEness with respect to them,
	 * allowing irrelevant merges from uninteresting branches to be
	 * simplified away. Only if we have only irrelevant parents do we
	 * base TREESAME on them. Note that this logic is replicated in
	 * update_treesame, which should be kept in sync.
	 */
	if (relevant_parents ? !relevant_change : !irrelevant_change)
		commit->object.flags |= TREESAME;
}