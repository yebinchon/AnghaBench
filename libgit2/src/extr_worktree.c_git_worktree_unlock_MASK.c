#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ locked; int /*<<< orphan*/  gitdir_path; } ;
typedef  TYPE_1__ git_worktree ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(git_worktree *wt)
{
	git_buf path = GIT_BUF_INIT;

	FUNC0(wt);

	if (!FUNC3(NULL, wt))
		return 1;

	if (FUNC2(&path, wt->gitdir_path, "locked") < 0)
		return -1;

	if (FUNC4(path.ptr) != 0) {
		FUNC1(&path);
		return -1;
	}

	wt->locked = 0;

	FUNC1(&path);

	return 0;
}