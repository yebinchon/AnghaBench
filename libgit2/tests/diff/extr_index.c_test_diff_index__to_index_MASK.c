#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_4__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_1__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_CONFLICTED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*) ; 

void FUNC12(void)
{
	const char *a_commit = "26a125ee1bf"; /* the current HEAD */
	git_tree *old_tree;
	git_index *old_index;
	git_index *new_index;
	git_diff *diff;
	diff_expects exp;

	FUNC1(FUNC6(&old_index));
	old_tree = FUNC11(g_repo, a_commit);
	FUNC1(FUNC7(old_index, old_tree));

	FUNC1(FUNC8(&new_index, g_repo));

	FUNC1(FUNC4(&diff, g_repo, old_index, new_index, NULL));

	FUNC10(&exp, 0, sizeof(diff_expects));
	FUNC1(FUNC2(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(8, exp.files);
	FUNC0(3, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(2, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(3, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(0, exp.file_status[GIT_DELTA_CONFLICTED]);

	FUNC3(diff);
	FUNC5(new_index);
	FUNC5(old_index);
	FUNC9(old_tree);
}