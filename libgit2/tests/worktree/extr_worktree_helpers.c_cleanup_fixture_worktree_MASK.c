#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ worktreename; scalar_t__ reponame; int /*<<< orphan*/ * worktree; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ worktree_fixture ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(worktree_fixture *fixture)
{
	if (!fixture)
		return;

	if (fixture->repo) {
		FUNC1(fixture->repo);
		fixture->repo = NULL;
	}
	if (fixture->worktree) {
		FUNC1(fixture->worktree);
		fixture->worktree = NULL;
	}

	if (fixture->reponame)
		FUNC0(fixture->reponame);
	if (fixture->worktreename)
		FUNC0(fixture->worktreename);
}