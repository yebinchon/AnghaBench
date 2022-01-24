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
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_RESET_MIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char const* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int,char*,char const*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/ * target ; 

void FUNC14(void)
{
	git_buf buf = GIT_BUF_INIT;
	git_annotated_commit *annotated;
	const char *exp_msg = "commit: Updating test data so we can test inter-hunk-context";

	FUNC13(repo, "HEAD", 9, "yoram.harmelin@gmail.com", exp_msg);
	FUNC13(repo, "refs/heads/master", 9, "yoram.harmelin@gmail.com", exp_msg);

	/* Branch not moving, no reflog entry */
	FUNC0(FUNC12(&target, repo, "HEAD^{commit}"));
	FUNC0(FUNC10(repo, target, GIT_RESET_MIXED, NULL));
	FUNC13(repo, "HEAD", 9, "yoram.harmelin@gmail.com", exp_msg);
	FUNC13(repo, "refs/heads/master", 9, "yoram.harmelin@gmail.com", exp_msg);

	FUNC7(target);
	target = NULL;

	/* Moved branch, expect id in message */
	FUNC0(FUNC12(&target, repo, "HEAD~^{commit}"));
	FUNC3(&buf);
	FUNC0(FUNC6(&buf, "reset: moving to %s", FUNC9(FUNC8(target))));
	FUNC0(FUNC10(repo, target, GIT_RESET_MIXED, NULL));
	FUNC13(repo, "HEAD", 10, NULL, FUNC4(&buf));
	FUNC13(repo, "refs/heads/master", 10, NULL, FUNC4(&buf));
	FUNC5(&buf);

	/* Moved branch, expect revspec in message */
	exp_msg = "reset: moving to HEAD~^{commit}";
	FUNC0(FUNC2(&annotated, repo, "HEAD~^{commit}"));
	FUNC0(FUNC11(repo, annotated, GIT_RESET_MIXED, NULL));
	FUNC13(repo, "HEAD", 11, NULL, exp_msg);
	FUNC13(repo, "refs/heads/master", 11, NULL, exp_msg);
	FUNC1(annotated);
}