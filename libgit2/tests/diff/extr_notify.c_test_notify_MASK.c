#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  notify_expected ;
struct TYPE_8__ {char** strings; int count; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/ * payload; TYPE_1__ pathspec; int /*<<< orphan*/  notify_cb; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_10__ {int /*<<< orphan*/  files; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  assert_called_notifications ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(
	char **searched_pathspecs,
	int pathspecs_count,
	notify_expected *expected_matched_pathspecs,
	int expected_diffed_files_count)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp;

	g_repo = FUNC2("status");

	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;
	opts.notify_cb = assert_called_notifications;
	opts.pathspec.strings = searched_pathspecs;
	opts.pathspec.count   = pathspecs_count;

	opts.payload = expected_matched_pathspecs;
	FUNC6(&exp, 0, sizeof(exp));

	FUNC1(FUNC5(&diff, g_repo, NULL, &opts));
	FUNC1(FUNC3(diff, diff_file_cb, NULL, NULL, NULL, &exp));

	FUNC0(expected_diffed_files_count, exp.files);

	FUNC4(diff);
}