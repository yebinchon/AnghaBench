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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14(void)
{
	git_submodule *sm;
	git_repository *repo;
	git_buf dot_git_content = GIT_BUF_INIT;

	g_repo = FUNC13();

	FUNC3(FUNC11(&sm, g_repo, "sm_gitmodules_only"));
	FUNC3(FUNC10(sm, 0));
	FUNC3(FUNC12(&repo, sm, 1));

	/* Verify worktree */
	FUNC0(repo, "core.worktree", "../../../sm_gitmodules_only/");

	/* Verify gitlink */
	FUNC3(FUNC5(&dot_git_content, "submod2/" "sm_gitmodules_only" "/.git"));
	FUNC2("gitdir: ../.git/modules/sm_gitmodules_only/", dot_git_content.ptr);

	FUNC1(FUNC7("submod2/" "sm_gitmodules_only" "/.git"));

	FUNC1(FUNC6("submod2/.git/modules"));
	FUNC1(FUNC6("submod2/.git/modules/" "sm_gitmodules_only"));
	FUNC1(FUNC7("submod2/.git/modules/" "sm_gitmodules_only" "/HEAD"));

	FUNC9(sm);
	FUNC8(repo);
	FUNC4(&dot_git_content);
}