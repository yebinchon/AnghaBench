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
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_RESET_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char*,char const*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  target ; 

void FUNC8(void)
{
	git_annotated_commit *annotated;
	const char *exp_msg = "checkout: moving from br2 to master";
	const char *master_msg = "commit: checking in";

	FUNC7(repo, "HEAD", 7, "yoram.harmelin@gmail.com", exp_msg);
	FUNC7(repo, "refs/heads/master", 2, "yoram.harmelin@gmail.com", master_msg);

	/* Branch not moving, no reflog entry */
	FUNC0(FUNC6(&target, repo, "HEAD^{commit}"));
	FUNC0(FUNC4(repo, target, GIT_RESET_SOFT, NULL));
	FUNC7(repo, "HEAD", 7, "yoram.harmelin@gmail.com", exp_msg);
	FUNC7(repo, "refs/heads/master", 2, "yoram.harmelin@gmail.com", master_msg);
	FUNC3(target);

	/* Moved branch, expect id in message */
	exp_msg = "reset: moving to be3563ae3f795b2b4353bcce3a527ad0a4f7f644";
	FUNC0(FUNC6(&target, repo, "HEAD~^{commit}"));
	FUNC0(FUNC4(repo, target, GIT_RESET_SOFT, NULL));
	FUNC7(repo, "HEAD", 8, "yoram.harmelin@gmail.com", exp_msg);
	FUNC7(repo, "refs/heads/master", 3, NULL, exp_msg);

	/* Moved branch, expect message with annotated string */
	exp_msg = "reset: moving to HEAD~^{commit}";
	FUNC0(FUNC2(&annotated, repo, "HEAD~^{commit}"));
	FUNC0(FUNC5(repo, annotated, GIT_RESET_SOFT, NULL));
	FUNC7(repo, "HEAD", 9, "yoram.harmelin@gmail.com", exp_msg);
	FUNC7(repo, "refs/heads/master", 4, NULL, exp_msg);

	FUNC1(annotated);
}