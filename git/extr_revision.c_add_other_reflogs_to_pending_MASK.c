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
struct worktree {scalar_t__ is_current; } ;
struct all_refs_cb {struct worktree* wt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct worktree**) ; 
 int /*<<< orphan*/  FUNC1 (struct worktree*) ; 
 struct worktree** FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_one_reflog ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct all_refs_cb*) ; 

__attribute__((used)) static void FUNC4(struct all_refs_cb *cb)
{
	struct worktree **worktrees, **p;

	worktrees = FUNC2(0);
	for (p = worktrees; *p; p++) {
		struct worktree *wt = *p;

		if (wt->is_current)
			continue;

		cb->wt = wt;
		FUNC3(FUNC1(wt),
				     handle_one_reflog,
				     cb);
	}
	FUNC0(worktrees);
}