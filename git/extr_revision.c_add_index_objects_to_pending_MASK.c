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
struct worktree {scalar_t__ is_current; } ;
struct rev_info {scalar_t__ single_worktree; TYPE_1__* repo; } ;
struct index_state {int /*<<< orphan*/ * member_0; } ;
struct TYPE_2__ {struct index_state* index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct index_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct worktree**) ; 
 int /*<<< orphan*/  FUNC3 (struct worktree*) ; 
 struct worktree** FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct worktree*,char*) ; 

void FUNC8(struct rev_info *revs, unsigned int flags)
{
	struct worktree **worktrees, **p;

	FUNC6(revs->repo);
	FUNC1(revs, revs->repo->index, flags);

	if (revs->single_worktree)
		return;

	worktrees = FUNC4(0);
	for (p = worktrees; *p; p++) {
		struct worktree *wt = *p;
		struct index_state istate = { NULL };

		if (wt->is_current)
			continue; /* current index already taken care of */

		if (FUNC5(&istate,
				    FUNC7(wt, "index"),
				    FUNC3(wt)) > 0)
			FUNC1(revs, &istate, flags);
		FUNC0(&istate);
	}
	FUNC2(worktrees);
}