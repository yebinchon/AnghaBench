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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIR_MODE ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	git_buf path_repository = GIT_BUF_INIT;
	git_buf path_current_workdir = GIT_BUF_INIT;

	FUNC1(FUNC8(&path_current_workdir, ".", NULL));

	FUNC1(FUNC6(&path_repository, FUNC4(&path_current_workdir), "a/b/c"));
	FUNC1(FUNC7(FUNC4(&path_repository), GIT_DIR_MODE));

	/* Change the current working directory */
	FUNC1(FUNC0(FUNC4(&path_repository)));

	/* Initialize a bare repo with a relative path escaping out of the current working directory */
	FUNC1(FUNC10(&_repo, "../d/e.git", 1));
	FUNC1(FUNC3(FUNC12(_repo), "/a/b/d/e.git/"));

	FUNC9(_repo);

	/* Open a bare repo with a relative path escaping out of the current working directory */
	FUNC1(FUNC11(&_repo, "../d/e.git"));

	FUNC1(FUNC0(FUNC4(&path_current_workdir)));

	FUNC5(&path_current_workdir);
	FUNC5(&path_repository);

	FUNC2("a");
}