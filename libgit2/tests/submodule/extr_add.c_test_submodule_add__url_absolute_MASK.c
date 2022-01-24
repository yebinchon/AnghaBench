#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 

void FUNC16(void)
{
	git_submodule *sm;
	git_repository *repo;
	git_buf dot_git_content = GIT_BUF_INIT;

	g_repo = FUNC15();

	/* re-add existing submodule */
	FUNC4(
		GIT_EEXISTS,
		FUNC13(NULL, g_repo, "whatever", "sm_unchanged", 1));

	/* add a submodule using a gitlink */

	FUNC5(
		FUNC13(&sm, g_repo, "https://github.com/libgit2/libgit2.git", "sm_libgit2", 1)
		);
	FUNC14(sm);

	FUNC2(FUNC10("submod2/" "sm_libgit2" "/.git"));

	FUNC2(FUNC9("submod2/.git/modules"));
	FUNC2(FUNC9("submod2/.git/modules/" "sm_libgit2"));
	FUNC2(FUNC10("submod2/.git/modules/" "sm_libgit2" "/HEAD"));
	FUNC1("sm_libgit2", "https://github.com/libgit2/libgit2.git");

	FUNC5(FUNC12(&repo, "submod2/" "sm_libgit2"));

	/* Verify worktree path is relative */
	FUNC0(repo, "core.worktree", "../../../sm_libgit2/");

	/* Verify gitdir path is relative */
	FUNC5(FUNC7(&dot_git_content, "submod2/" "sm_libgit2" "/.git"));
	FUNC3("gitdir: ../.git/modules/sm_libgit2/", dot_git_content.ptr);

	FUNC11(repo);
	FUNC6(&dot_git_content);

	/* add a submodule not using a gitlink */

	FUNC5(
		FUNC13(&sm, g_repo, "https://github.com/libgit2/libgit2.git", "sm_libgit2b", 0)
		);
	FUNC14(sm);

	FUNC2(FUNC9("submod2/" "sm_libgit2b" "/.git"));
	FUNC2(FUNC10("submod2/" "sm_libgit2b" "/.git/HEAD"));
	FUNC2(!FUNC8("submod2/.git/modules/" "sm_libgit2b"));
	FUNC1("sm_libgit2b", "https://github.com/libgit2/libgit2.git");
}