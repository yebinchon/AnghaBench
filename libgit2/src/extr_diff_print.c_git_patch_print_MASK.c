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
typedef  int /*<<< orphan*/  git_patch ;
typedef  scalar_t__ git_diff_line_cb ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  diff_print_info ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FORMAT_PATCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  diff_print_patch_binary ; 
 int /*<<< orphan*/  diff_print_patch_file ; 
 int /*<<< orphan*/  diff_print_patch_hunk ; 
 int /*<<< orphan*/  diff_print_patch_line ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(
	git_patch *patch,
	git_diff_line_cb print_cb,
	void *payload)
{
	int error;
	git_buf temp = GIT_BUF_INIT;
	diff_print_info pi;

	FUNC0(patch && print_cb);

	if (!(error = FUNC1(
		&pi, &temp, patch,
		GIT_DIFF_FORMAT_PATCH, print_cb, payload)))
	{
		error = FUNC4(
			patch,
			diff_print_patch_file, diff_print_patch_binary,
			diff_print_patch_hunk, diff_print_patch_line,
			&pi);

		if (error) /* make sure error message is set */
			FUNC3(error, "git_patch_print");
	}

	FUNC2(&temp);

	return error;
}