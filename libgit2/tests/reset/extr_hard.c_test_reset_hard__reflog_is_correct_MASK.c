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
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 char const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,char*,char const*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  target ; 

void FUNC13(void)
{
	git_buf buf = GIT_BUF_INIT;
	git_annotated_commit *annotated;
	const char *exp_msg = "commit: Add a file which name should appear before the "
		"\"subdir/\" folder while being dealt with by the treewalker";

	FUNC12(repo, "HEAD", 3, "emeric.fermas@gmail.com", exp_msg);
	FUNC12(repo, "refs/heads/master", 3, "emeric.fermas@gmail.com", exp_msg);

	/* Branch not moving, no reflog entry */
	FUNC0(FUNC11(&target, repo, "HEAD^{commit}"));
	FUNC0(FUNC9(repo, target, GIT_RESET_HARD, NULL));
	FUNC12(repo, "HEAD", 3, "emeric.fermas@gmail.com", exp_msg);
	FUNC12(repo, "refs/heads/master", 3, "emeric.fermas@gmail.com", exp_msg);

	FUNC6(target);

	/* Moved branch, expect id in message */
	FUNC0(FUNC11(&target, repo, "HEAD~^{commit}"));
	FUNC0(FUNC5(&buf, "reset: moving to %s", FUNC8(FUNC7(target))));
	FUNC0(FUNC9(repo, target, GIT_RESET_HARD, NULL));
	FUNC12(repo, "HEAD", 4, NULL, FUNC3(&buf));
	FUNC12(repo, "refs/heads/master", 4, NULL, FUNC3(&buf));

	FUNC4(&buf);

	/* Moved branch, expect revspec in message */
	exp_msg = "reset: moving to HEAD~^{commit}";
	FUNC0(FUNC2(&annotated, repo, "HEAD~^{commit}"));
	FUNC0(FUNC10(repo, annotated, GIT_RESET_HARD, NULL));
	FUNC12(repo, "HEAD", 5, NULL, exp_msg);
	FUNC12(repo, "refs/heads/master", 5, NULL, exp_msg);

	FUNC1(annotated);

}