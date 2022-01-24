#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ie ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_10__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_INDEX_ENTRY_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC14(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_index *idx = NULL;
	diff_expects exp;
	const git_index_entry *iep;
	git_index_entry ie;

	g_repo = FUNC3("status");

	/* do initial diff */

	FUNC2(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC13(&exp, 0, sizeof(exp));
	FUNC2(FUNC4(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC1(8, exp.files);
	FUNC1(0, exp.file_status[GIT_DELTA_ADDED]);
	FUNC1(4, exp.file_status[GIT_DELTA_DELETED]);
	FUNC1(4, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC5(diff);

	/* mark a couple of entries with ASSUME_UNCHANGED */

	FUNC2(FUNC11(&idx, g_repo));

	FUNC0((iep = FUNC9(idx, "modified_file", 0)) != NULL);
	FUNC12(&ie, iep, sizeof(ie));
	ie.flags |= GIT_INDEX_ENTRY_VALID;
	FUNC2(FUNC7(idx, &ie));

	FUNC0((iep = FUNC9(idx, "file_deleted", 0)) != NULL);
	FUNC12(&ie, iep, sizeof(ie));
	ie.flags |= GIT_INDEX_ENTRY_VALID;
	FUNC2(FUNC7(idx, &ie));

	FUNC2(FUNC10(idx));
	FUNC8(idx);

	/* redo diff and see that entries are skipped */

	FUNC2(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC13(&exp, 0, sizeof(exp));
	FUNC2(FUNC4(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC1(6, exp.files);
	FUNC1(0, exp.file_status[GIT_DELTA_ADDED]);
	FUNC1(3, exp.file_status[GIT_DELTA_DELETED]);
	FUNC1(3, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC5(diff);

}