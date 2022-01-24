#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(git_submodule *sm, const char *name, void *payload)
{
	git_buf submodulepath = GIT_BUF_INIT;
	git_buf dirtypath = GIT_BUF_INIT;
	git_repository *submodule_repo;

	FUNC0(name);
	FUNC0(payload);

	/* remove submodule directory in preparation for init and repo_init */
	FUNC1(FUNC5(
		&submodulepath,
		FUNC8(g_repo),
		FUNC9(sm)
	));
	FUNC6(FUNC3(&submodulepath), NULL, GIT_RMDIR_REMOVE_FILES);

	/* initialize submodule's repository */
	FUNC1(FUNC10(&submodule_repo, sm, 0));

	/* create a file in the submodule workdir to make it dirty */
	FUNC1(
		FUNC5(&dirtypath, FUNC8(submodule_repo), "dirty"));
	FUNC2(FUNC3(&dirtypath));

	FUNC4(&dirtypath);
	FUNC4(&submodulepath);
	FUNC7(submodule_repo);

	return 0;
}