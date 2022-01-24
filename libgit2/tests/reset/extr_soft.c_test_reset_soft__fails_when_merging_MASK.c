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
 int /*<<< orphan*/  GIT_EUNMERGED ; 
 int /*<<< orphan*/  GIT_RESET_SOFT ; 
 int /*<<< orphan*/  KNOWN_COMMIT_IN_BARE_REPO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  target ; 

void FUNC11(void)
{
	git_buf merge_head_path = GIT_BUF_INIT;

	FUNC2(FUNC6(repo));
	FUNC2(FUNC5(&merge_head_path, FUNC7(repo), "MERGE_HEAD"));
	FUNC1(FUNC3(&merge_head_path), "beefbeefbeefbeefbeefbeefbeefbeefbeefbeef\n");

	FUNC2(FUNC9(&target, repo, KNOWN_COMMIT_IN_BARE_REPO));

	FUNC0(GIT_EUNMERGED, FUNC8(repo, target, GIT_RESET_SOFT, NULL));
	FUNC2(FUNC10(FUNC3(&merge_head_path)));

	FUNC4(&merge_head_path);
}