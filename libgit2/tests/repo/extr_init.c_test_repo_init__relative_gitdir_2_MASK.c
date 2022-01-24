#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; int /*<<< orphan*/  workdir_path; } ;
typedef  TYPE_1__ git_repository_init_options ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_REPOSITORY_INIT_MKPATH ; 
 int GIT_REPOSITORY_INIT_NO_DOTGIT_DIR ; 
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ; 
 int GIT_REPOSITORY_INIT_RELATIVE_GITLINK ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(void)
{
	git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
	git_buf dot_git_content = GIT_BUF_INIT;
	git_buf full_path = GIT_BUF_INIT;

	FUNC3(FUNC9(&full_path, ".", NULL));
	FUNC3(FUNC7(&full_path, full_path.ptr, "root/b/c_wd"));

	opts.workdir_path = full_path.ptr;
	opts.flags =
		GIT_REPOSITORY_INIT_MKPATH |
		GIT_REPOSITORY_INIT_RELATIVE_GITLINK |
		GIT_REPOSITORY_INIT_NO_DOTGIT_DIR;

	/* make the directory first, then it should succeed */
	FUNC3(FUNC10(&_repo, "root/b/my_repository", &opts));
	FUNC6(&full_path);

	FUNC1(!FUNC5(FUNC14(_repo), "root/b/c_wd/"));
	FUNC1(!FUNC5(FUNC13(_repo), "root/b/my_repository/"));
	FUNC1(!FUNC11(_repo));
	FUNC1(FUNC12(_repo));

	/* Verify that the gitlink and worktree entries are relative */

	/* Verify worktree */
	FUNC0(_repo, "core.worktree", "../c_wd/");

	/* Verify gitlink */
	FUNC3(FUNC8(&dot_git_content, "root/b/c_wd/.git"));
	FUNC2("gitdir: ../my_repository/", dot_git_content.ptr);

	FUNC6(&dot_git_content);
	FUNC4("root");
}