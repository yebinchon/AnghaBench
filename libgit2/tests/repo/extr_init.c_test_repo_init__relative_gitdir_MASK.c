#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* workdir_path; int flags; } ;
typedef  TYPE_1__ git_repository_init_options ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
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
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
	git_buf dot_git_content = GIT_BUF_INIT;

	opts.workdir_path = "../c_wd";
	opts.flags =
		GIT_REPOSITORY_INIT_MKPATH |
		GIT_REPOSITORY_INIT_RELATIVE_GITLINK |
		GIT_REPOSITORY_INIT_NO_DOTGIT_DIR;

	/* make the directory first, then it should succeed */
	FUNC3(FUNC8(&_repo, "root/b/my_repository", &opts));

	FUNC1(!FUNC5(FUNC12(_repo), "root/b/c_wd/"));
	FUNC1(!FUNC5(FUNC11(_repo), "root/b/my_repository/"));
	FUNC1(!FUNC9(_repo));
	FUNC1(FUNC10(_repo));

	/* Verify that the gitlink and worktree entries are relative */

	/* Verify worktree */
	FUNC0(_repo, "core.worktree", "../c_wd/");

	/* Verify gitlink */
	FUNC3(FUNC7(&dot_git_content, "root/b/c_wd/.git"));
	FUNC2("gitdir: ../my_repository/", dot_git_content.ptr);

	FUNC6(&dot_git_content);
	FUNC4("root");
}