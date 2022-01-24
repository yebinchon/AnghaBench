#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_worktree ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_11__ {TYPE_2__* repo; } ;
struct TYPE_10__ {int /*<<< orphan*/  commondir; } ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__ fixture ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_2__*,char*) ; 

void FUNC9(void)
{
	git_worktree *wt;
	git_repository *repo;
	git_buf buf = GIT_BUF_INIT, path = GIT_BUF_INIT;

	FUNC1(FUNC4(&buf, "/path/to/nonexistent/commondir"));
	FUNC1(FUNC3(&path,
		    "%s/worktrees/testrepo-worktree/commondir",
		    fixture.repo->commondir));
	FUNC1(FUNC5(&buf, path.ptr, O_RDWR, 0644));

	FUNC1(FUNC8(&wt, fixture.repo, "testrepo-worktree"));
	FUNC0(FUNC6(&repo, wt));

	FUNC2(&buf);
	FUNC2(&path);
	FUNC7(wt);
}