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
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  repo ; 

void FUNC12(void)
{
	git_config *cfg;
	git_buf buf = GIT_BUF_INIT;
	git_buf content = GIT_BUF_INIT;

	FUNC1(FUNC11(repo, "./new_workdir", true));

	FUNC0(FUNC9("./new_workdir/.git"));

	FUNC1(FUNC8(&content, "./new_workdir/.git"));
	FUNC0(FUNC2(FUNC4(&content), "gitdir: ") == 0);
	FUNC0(FUNC3(FUNC4(&content), "testrepo.git/") == 0);
	FUNC5(&content);

	FUNC1(FUNC10(&cfg, repo));
	FUNC1(FUNC7(&buf, cfg, "core.worktree"));
	FUNC0(FUNC3(FUNC4(&buf), "new_workdir/") == 0);

	FUNC5(&buf);
	FUNC6(cfg);
}