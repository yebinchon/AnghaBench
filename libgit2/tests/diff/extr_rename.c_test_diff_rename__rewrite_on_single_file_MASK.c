#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;
struct TYPE_11__ {int flags; } ;
typedef  TYPE_2__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_12__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_UNTRACKED ; 
 int GIT_DIFF_FIND_AND_BREAK_REWRITES ; 
 int GIT_DIFF_FIND_FOR_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int GIT_DIFF_FIND_RENAMES_FROM_REWRITES ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC10(void)
{
	git_index *index;
	git_diff *diff = NULL;
	diff_expects exp;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;

	diffopts.flags = GIT_DIFF_INCLUDE_UNTRACKED;

	findopts.flags = GIT_DIFF_FIND_FOR_UNTRACKED |
		GIT_DIFF_FIND_AND_BREAK_REWRITES |
		GIT_DIFF_FIND_RENAMES_FROM_REWRITES;

	FUNC1(FUNC8(&index, g_repo));

	FUNC2("renames/ikeepsix.txt",
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n");

	FUNC1(FUNC6(&diff, g_repo, index, &diffopts));
	FUNC1(FUNC3(diff, &findopts));

	FUNC9(&exp, 0, sizeof(exp));

	FUNC1(FUNC4(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(2, exp.files);
	FUNC0(1, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(1, exp.file_status[GIT_DELTA_UNTRACKED]);

	FUNC5(diff);
	FUNC7(index);
}