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
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  target ; 

void FUNC11(void)
{
	git_buf merge_head_path = GIT_BUF_INIT,
		merge_msg_path = GIT_BUF_INIT,
		merge_mode_path = GIT_BUF_INIT,
		orig_head_path = GIT_BUF_INIT;

	FUNC2(FUNC5(&merge_head_path, FUNC7(repo), "MERGE_HEAD"));
	FUNC1(FUNC3(&merge_head_path), "beefbeefbeefbeefbeefbeefbeefbeefbeefbeef\n");

	FUNC2(FUNC5(&merge_msg_path, FUNC7(repo), "MERGE_MSG"));
	FUNC1(FUNC3(&merge_msg_path), "Merge commit 0017bd4ab1ec30440b17bae1680cff124ab5f1f6\n");

	FUNC2(FUNC5(&merge_mode_path, FUNC7(repo), "MERGE_MODE"));
	FUNC1(FUNC3(&merge_mode_path), "");

	FUNC2(FUNC5(&orig_head_path, FUNC7(repo), "ORIG_HEAD"));
	FUNC1(FUNC3(&orig_head_path), "0017bd4ab1ec30440b17bae1680cff124ab5f1f6");

	FUNC2(FUNC9(&target, repo, "0017bd4"));
	FUNC2(FUNC8(repo, target, GIT_RESET_HARD, NULL));

	FUNC0(!FUNC6(FUNC3(&merge_head_path)));
	FUNC0(!FUNC6(FUNC3(&merge_msg_path)));
	FUNC0(!FUNC6(FUNC3(&merge_mode_path)));

	FUNC0(FUNC6(FUNC3(&orig_head_path)));
	FUNC2(FUNC10(FUNC3(&orig_head_path)));

	FUNC4(&merge_head_path);
	FUNC4(&merge_msg_path);
	FUNC4(&merge_mode_path);
	FUNC4(&orig_head_path);
}