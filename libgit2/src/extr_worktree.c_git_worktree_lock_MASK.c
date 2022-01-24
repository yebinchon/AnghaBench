#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int locked; int /*<<< orphan*/  gitdir_path; } ;
typedef  TYPE_1__ git_worktree ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int FUNC7(git_worktree *wt, const char *reason)
{
	git_buf buf = GIT_BUF_INIT, path = GIT_BUF_INIT;
	int err;

	FUNC0(wt);

	if ((err = FUNC5(NULL, wt)) < 0)
		goto out;

	if ((err = FUNC3(&path, wt->gitdir_path, "locked")) < 0)
		goto out;

	if (reason)
		FUNC1(&buf, reason, FUNC6(reason));

	if ((err = FUNC4(&buf, path.ptr, O_CREAT|O_EXCL|O_WRONLY, 0644)) < 0)
		goto out;

	wt->locked = 1;

out:
	FUNC2(&path);

	return err;
}