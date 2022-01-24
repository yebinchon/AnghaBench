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
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_8__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_IGNORED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_UNTRACKED ; 
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ; 
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	const char *a_commit = "873585b94bdeabccea991ea5e3ec1a277895b698";
	git_tree *a;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp;

	g_repo = FUNC8();

	a = FUNC7(g_repo, a_commit);

	opts.flags =
		GIT_DIFF_INCLUDE_UNTRACKED |
		GIT_DIFF_INCLUDE_IGNORED |
		GIT_DIFF_RECURSE_UNTRACKED_DIRS |
		GIT_DIFF_SHOW_UNTRACKED_CONTENT;

	FUNC1(FUNC4(&diff, g_repo, a, &opts));

	/* diff_print(stderr, diff); */

	/* essentially doing: git diff 873585b94bdeabccea991ea5e3ec1a277895b698 */

	FUNC6(&exp, 0, sizeof(exp));

	FUNC1(FUNC2(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	/* so "git diff 873585" returns:
	 *  M   .gitmodules
	 *  A   just_a_dir/contents
	 *  A   just_a_file
	 *  A   sm_added_and_uncommited
	 *  A   sm_changed_file
	 *  A   sm_changed_head
	 *  A   sm_changed_index
	 *  A   sm_changed_untracked_file
	 *  M   sm_missing_commits
	 *  A   sm_unchanged
	 * which is a little deceptive because of the difference between the
	 * "git diff <treeish>" results from "git_diff_tree_to_workdir".  The
	 * only significant difference is that those Added items will show up
	 * as Untracked items in the pure libgit2 diff.
	 *
	 * Then add in the two extra untracked items "not" and "not-submodule"
	 * to get the 12 files reported here.
	 */

	FUNC0(12, exp.files);

	FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(0, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(2, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(0, exp.file_status[GIT_DELTA_IGNORED]);
	FUNC0(10, exp.file_status[GIT_DELTA_UNTRACKED]);

	/* the following numbers match "git diff 873585" exactly */

	FUNC0(9, exp.hunks);

	FUNC0(33, exp.lines);
	FUNC0(2, exp.line_ctxt);
	FUNC0(30, exp.line_adds);
	FUNC0(1, exp.line_dels);

	FUNC3(diff);
	FUNC5(a);
}