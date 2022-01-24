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
struct rev_info {scalar_t__ first_parent_only; } ;
struct merge_simplify_state {struct commit* simplified; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_3__ {int flags; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;
struct TYPE_4__ {struct commit_list* next; } ;

/* Variables and functions */
 int TREESAME ; 
 int UNINTERESTING ; 
 TYPE_2__* FUNC0 (struct commit*,struct commit_list**) ; 
 scalar_t__ FUNC1 (struct rev_info*,struct commit*) ; 
 struct merge_simplify_state* FUNC2 (struct rev_info*,struct commit*) ; 
 int FUNC3 (struct commit*) ; 
 scalar_t__ FUNC4 (struct commit*) ; 
 struct commit* FUNC5 (struct rev_info*,struct commit_list*) ; 
 int FUNC6 (struct rev_info*,struct commit*) ; 
 int FUNC7 (struct rev_info*,struct commit*) ; 

__attribute__((used)) static struct commit_list **FUNC8(struct rev_info *revs, struct commit *commit, struct commit_list **tail)
{
	struct commit_list *p;
	struct commit *parent;
	struct merge_simplify_state *st, *pst;
	int cnt;

	st = FUNC2(revs, commit);

	/*
	 * Have we handled this one?
	 */
	if (st->simplified)
		return tail;

	/*
	 * An UNINTERESTING commit simplifies to itself, so does a
	 * root commit.  We do not rewrite parents of such commit
	 * anyway.
	 */
	if ((commit->object.flags & UNINTERESTING) || !commit->parents) {
		st->simplified = commit;
		return tail;
	}

	/*
	 * Do we know what commit all of our parents that matter
	 * should be rewritten to?  Otherwise we are not ready to
	 * rewrite this one yet.
	 */
	for (cnt = 0, p = commit->parents; p; p = p->next) {
		pst = FUNC2(revs, p->item);
		if (!pst->simplified) {
			tail = &FUNC0(p->item, tail)->next;
			cnt++;
		}
		if (revs->first_parent_only)
			break;
	}
	if (cnt) {
		tail = &FUNC0(commit, tail)->next;
		return tail;
	}

	/*
	 * Rewrite our list of parents. Note that this cannot
	 * affect our TREESAME flags in any way - a commit is
	 * always TREESAME to its simplification.
	 */
	for (p = commit->parents; p; p = p->next) {
		pst = FUNC2(revs, p->item);
		p->item = pst->simplified;
		if (revs->first_parent_only)
			break;
	}

	if (revs->first_parent_only)
		cnt = 1;
	else
		cnt = FUNC6(revs, commit);

	/*
	 * It is possible that we are a merge and one side branch
	 * does not have any commit that touches the given paths;
	 * in such a case, the immediate parent from that branch
	 * will be rewritten to be the merge base.
	 *
	 *      o----X		X: the commit we are looking at;
	 *     /    /		o: a commit that touches the paths;
	 * ---o----'
	 *
	 * Further, a merge of an independent branch that doesn't
	 * touch the path will reduce to a treesame root parent:
	 *
	 *  ----o----X		X: the commit we are looking at;
	 *          /		o: a commit that touches the paths;
	 *         r		r: a root commit not touching the paths
	 *
	 * Detect and simplify both cases.
	 */
	if (1 < cnt) {
		int marked = FUNC3(commit);
		marked += FUNC4(commit);
		if (marked)
			marked -= FUNC1(revs, commit);
		if (marked)
			cnt = FUNC7(revs, commit);
	}

	/*
	 * A commit simplifies to itself if it is a root, if it is
	 * UNINTERESTING, if it touches the given paths, or if it is a
	 * merge and its parents don't simplify to one relevant commit
	 * (the first two cases are already handled at the beginning of
	 * this function).
	 *
	 * Otherwise, it simplifies to what its sole relevant parent
	 * simplifies to.
	 */
	if (!cnt ||
	    (commit->object.flags & UNINTERESTING) ||
	    !(commit->object.flags & TREESAME) ||
	    (parent = FUNC5(revs, commit->parents)) == NULL)
		st->simplified = commit;
	else {
		pst = FUNC2(revs, parent);
		st->simplified = pst->simplified;
	}
	return tail;
}