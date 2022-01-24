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
struct TYPE_3__ {int /*<<< orphan*/  gitdir; int /*<<< orphan*/  gitlink; int /*<<< orphan*/  workdir; int /*<<< orphan*/  is_worktree; } ;
typedef  TYPE_1__ git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,char*,...) ; 

__attribute__((used)) static void FUNC3(git_repository *wt, const char *parentdir, const char *wtdir)
{
	FUNC0(wt->is_worktree);

	FUNC1(wt->workdir, FUNC2(1, wtdir, NULL));
	FUNC1(wt->gitlink, FUNC2(0, wtdir, ".git", NULL));
	FUNC1(wt->gitdir, FUNC2(1, parentdir, ".git", "worktrees", wtdir, NULL));
}