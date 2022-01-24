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
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_7__ {int context_lines; int interhunk_lines; int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_8__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_UNMODIFIED ; 
 size_t GIT_DELTA_UNTRACKED ; 
 int GIT_DIFF_INCLUDE_UNMODIFIED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC14(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_index *idx = NULL;
	diff_expects exp;

	g_repo = FUNC2("status");
	FUNC1(FUNC11(&idx, g_repo));

	/* make the in-memory index invalid */
	{
		git_repository *r2;
		git_index *idx2;
		FUNC1(FUNC12(&r2, "status"));
		FUNC1(FUNC11(&idx2, r2));
		FUNC1(FUNC6(idx2, "new_file"));
		FUNC1(FUNC6(idx2, "subdir/new_file"));
		FUNC1(FUNC8(idx2, "staged_new_file"));
		FUNC1(FUNC8(idx2, "staged_changes_file_deleted"));
		FUNC1(FUNC9(idx2));
		FUNC7(idx2);
		FUNC10(r2);
	}

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED | GIT_DIFF_INCLUDE_UNMODIFIED;

	/* first try with index pointer which should prevent reload */

	FUNC1(FUNC5(&diff, g_repo, idx, &opts));

	FUNC13(&exp, 0, sizeof(exp));

	FUNC1(FUNC3(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	FUNC0(17, exp.files);
	FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(4, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(4, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(4, exp.file_status[GIT_DELTA_UNTRACKED]);
	FUNC0(5, exp.file_status[GIT_DELTA_UNMODIFIED]);

	FUNC4(diff);

	/* now let's try without the index pointer which should trigger reload */

	/* two files that were UNTRACKED should have become UNMODIFIED */
	/* one file that was UNMODIFIED should now have become UNTRACKED */
	/* one file that was DELETED should now be gone completely */

	FUNC1(FUNC5(&diff, g_repo, NULL, &opts));

	FUNC13(&exp, 0, sizeof(exp));

	FUNC1(FUNC3(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	FUNC4(diff);

	FUNC0(16, exp.files);
	FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(3, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(4, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(3, exp.file_status[GIT_DELTA_UNTRACKED]);
	FUNC0(6, exp.file_status[GIT_DELTA_UNMODIFIED]);

	FUNC7(idx);
}