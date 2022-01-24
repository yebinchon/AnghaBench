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
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_4__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_1__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_IGNORED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(git_diff **out, const git_diff_options *opts)
{
	diff_expects exp;

	FUNC1(FUNC3(out, g_repo, NULL, opts));

	FUNC4(&exp, 0, sizeof(exp));

	FUNC1(FUNC2(
		*out, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	FUNC0(13, exp.files);
	FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(4, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(4, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(1, exp.file_status[GIT_DELTA_IGNORED]);
	FUNC0(4, exp.file_status[GIT_DELTA_UNTRACKED]);
}