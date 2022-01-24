#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_8__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_IGNORED ; 
 size_t GIT_DELTA_UNTRACKED ; 
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC10(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp;

	/* A side effect of of Git's handling of untracked directories and
	 * auto-ignoring of ".git" entries is that a newly initialized Git
	 * repo inside another repo will be skipped by diff, but one that
	 * actually has a commit it in will show as an untracked directory.
	 * Let's make sure that works.
	 */

	g_repo = FUNC3("empty_standard_repo");

	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

	FUNC2(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC9(&exp, 0, sizeof(exp));
	FUNC2(FUNC4(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(0, exp.files);
	FUNC5(diff);

	{
		git_repository *r2;
		FUNC2(FUNC8(&r2, "empty_standard_repo/subrepo", 0));
		FUNC7(r2);
	}

	FUNC2(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC9(&exp, 0, sizeof(exp));
	FUNC2(FUNC4(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(1, exp.files);
	FUNC0(1, exp.file_status[GIT_DELTA_IGNORED]);
	FUNC5(diff);

	FUNC1("empty_standard_repo/subrepo/README.txt", "hello\n");

	FUNC2(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC9(&exp, 0, sizeof(exp));
	FUNC2(FUNC4(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(1, exp.files);
	FUNC0(1, exp.file_status[GIT_DELTA_UNTRACKED]);
	FUNC5(diff);
}