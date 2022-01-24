#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_10__ {int context_lines; int interhunk_lines; int flags; TYPE_1__ pathspec; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_11__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_IGNORED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_UNTRACKED ; 
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC8(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp;
	char *pathspec = NULL;
	int use_iterator;

	g_repo = FUNC2("status");

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;
	opts.pathspec.strings = &pathspec;
	opts.pathspec.count   = 1;

	FUNC1(FUNC6(&diff, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC7(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff, diff_file_cb, NULL, NULL, NULL, &exp));
		else
			FUNC1(FUNC4(diff, diff_file_cb, NULL, NULL, NULL, &exp));

		FUNC0(13, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(4, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(4, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.file_status[GIT_DELTA_IGNORED]);
		FUNC0(4, exp.file_status[GIT_DELTA_UNTRACKED]);
	}

	FUNC5(diff);

	pathspec = "modified_file";

	FUNC1(FUNC6(&diff, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC7(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff, diff_file_cb, NULL, NULL, NULL, &exp));
		else
			FUNC1(FUNC4(diff, diff_file_cb, NULL, NULL, NULL, &exp));

		FUNC0(1, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(0, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(1, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(0, exp.file_status[GIT_DELTA_IGNORED]);
		FUNC0(0, exp.file_status[GIT_DELTA_UNTRACKED]);
	}

	FUNC5(diff);

	pathspec = "subdir";

	FUNC1(FUNC6(&diff, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC7(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff, diff_file_cb, NULL, NULL, NULL, &exp));
		else
			FUNC1(FUNC4(diff, diff_file_cb, NULL, NULL, NULL, &exp));

		FUNC0(3, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(1, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(1, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(0, exp.file_status[GIT_DELTA_IGNORED]);
		FUNC0(1, exp.file_status[GIT_DELTA_UNTRACKED]);
	}

	FUNC5(diff);

	pathspec = "*_deleted";

	FUNC1(FUNC6(&diff, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC7(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff, diff_file_cb, NULL, NULL, NULL, &exp));
		else
			FUNC1(FUNC4(diff, diff_file_cb, NULL, NULL, NULL, &exp));

		FUNC0(2, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(2, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(0, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(0, exp.file_status[GIT_DELTA_IGNORED]);
		FUNC0(0, exp.file_status[GIT_DELTA_UNTRACKED]);
	}

	FUNC5(diff);
}