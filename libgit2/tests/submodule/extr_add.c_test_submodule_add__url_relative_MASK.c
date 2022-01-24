#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
struct TYPE_4__ {int /*<<< orphan*/  count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_submodule *sm;
	git_remote *remote;
	git_strarray problems = {0};

	/* default remote url is https://github.com/libgit2/false.git */
	g_repo = FUNC4("testrepo2");

	/* make sure we don't default to origin - rename origin -> test_remote */
	FUNC3(FUNC6(&problems, g_repo, "origin", "test_remote"));
	FUNC1(0, problems.count);
	FUNC7(&problems);
	FUNC2(FUNC5(&remote, g_repo, "origin"));

	FUNC3(
		FUNC8(&sm, g_repo, "../TestGitRepository", "TestGitRepository", 1)
		);
	FUNC9(sm);

	FUNC0("TestGitRepository", "https://github.com/libgit2/TestGitRepository");
}