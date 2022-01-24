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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_FORMAT_PATCH ; 
 int /*<<< orphan*/  check_removal_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const*) ; 

void FUNC8(void)
{
	const char *one_sha = "26a125e";
	const char *another_sha = "735b6a2";
	git_tree *one, *another;
	git_diff *diff;
	int fail_with;

	g_repo = FUNC2("status");

	one = FUNC7(g_repo, one_sha);
	another = FUNC7(g_repo, another_sha);

	FUNC1(FUNC5(&diff, g_repo, one, another, NULL));

	fail_with = -2323;

	FUNC0(FUNC4(
		diff, GIT_DIFF_FORMAT_PATCH, check_removal_cb, &fail_with),
		fail_with);

	fail_with = 45;

	FUNC0(FUNC4(
		diff, GIT_DIFF_FORMAT_PATCH, check_removal_cb, &fail_with),
		fail_with);

	FUNC3(diff);

	FUNC6(another);
	FUNC6(one);
}