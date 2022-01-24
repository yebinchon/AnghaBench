#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct treesame_state {unsigned int nparents; int* treesame; } ;
struct rev_info {int /*<<< orphan*/  treesame; scalar_t__ dense; } ;
struct TYPE_5__ {int flags; } ;
struct commit {TYPE_2__ object; TYPE_1__* parents; } ;
struct TYPE_4__ {scalar_t__ next; } ;

/* Variables and functions */
 int TREESAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct treesame_state* FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,unsigned int) ; 
 scalar_t__ FUNC5 (struct rev_info*,struct commit*) ; 

__attribute__((used)) static int FUNC6(struct rev_info *revs, struct commit *commit, unsigned nth_parent)
{
	struct treesame_state *st;
	int old_same;

	if (!commit->parents) {
		/*
		 * Have just removed the only parent from a non-merge.
		 * Different handling, as we lack decoration.
		 */
		if (nth_parent != 0)
			FUNC1("compact_treesame %u", nth_parent);
		old_same = !!(commit->object.flags & TREESAME);
		if (FUNC5(revs, commit))
			commit->object.flags |= TREESAME;
		else
			commit->object.flags &= ~TREESAME;
		return old_same;
	}

	st = FUNC3(&revs->treesame, &commit->object);
	if (!st || nth_parent >= st->nparents)
		FUNC1("compact_treesame %u", nth_parent);

	old_same = st->treesame[nth_parent];
	FUNC4(st->treesame + nth_parent,
		st->treesame + nth_parent + 1,
		st->nparents - nth_parent - 1);

	/*
	 * If we've just become a non-merge commit, update TREESAME
	 * immediately, and remove the no-longer-needed decoration.
	 * If still a merge, defer update until update_treesame().
	 */
	if (--st->nparents == 1) {
		if (commit->parents->next)
			FUNC1("compact_treesame parents mismatch");
		if (st->treesame[0] && revs->dense)
			commit->object.flags |= TREESAME;
		else
			commit->object.flags &= ~TREESAME;
		FUNC2(FUNC0(&revs->treesame, &commit->object, NULL));
	}

	return old_same;
}