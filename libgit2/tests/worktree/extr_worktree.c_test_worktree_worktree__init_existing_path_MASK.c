#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_worktree ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;
struct TYPE_11__ {TYPE_1__* worktree; TYPE_3__* repo; } ;
struct TYPE_10__ {int /*<<< orphan*/  workdir; } ;
struct TYPE_8__ {int /*<<< orphan*/  gitdir; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const**) ; 
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_6__ fixture ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	const char *wtfiles[] = { "HEAD", "commondir", "gitdir", "index" };
	git_worktree *wt;
	git_buf path = GIT_BUF_INIT;
	unsigned i;

	/* Delete files to verify they have not been created by
	 * the init call */
	for (i = 0; i < FUNC0(wtfiles); i++) {
		FUNC3(FUNC5(&path,
			    fixture.worktree->gitdir, wtfiles[i]));
		FUNC3(FUNC8(path.ptr));
	}

	FUNC3(FUNC5(&path, fixture.repo->workdir, "../testrepo-worktree"));
	FUNC2(FUNC7(&wt, fixture.repo, "worktree-new", path.ptr, NULL));

	/* Verify files have not been re-created */
	for (i = 0; i < FUNC0(wtfiles); i++) {
		FUNC3(FUNC5(&path,
			    fixture.worktree->gitdir, wtfiles[i]));
		FUNC1(!FUNC6(path.ptr));
	}

	FUNC4(&path);
}