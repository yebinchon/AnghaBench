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
typedef  int /*<<< orphan*/ * git_diff_line_cb ;
typedef  int /*<<< orphan*/ * git_diff_hunk_cb ;
typedef  int /*<<< orphan*/  git_diff_format_t ;
typedef  int /*<<< orphan*/ * git_diff_file_cb ;
typedef  int /*<<< orphan*/ * git_diff_binary_cb ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  diff_print_info ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
#define  GIT_DIFF_FORMAT_NAME_ONLY 132 
#define  GIT_DIFF_FORMAT_NAME_STATUS 131 
#define  GIT_DIFF_FORMAT_PATCH 130 
#define  GIT_DIFF_FORMAT_PATCH_HEADER 129 
#define  GIT_DIFF_FORMAT_RAW 128 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * diff_print_one_name_only ; 
 int /*<<< orphan*/ * diff_print_one_name_status ; 
 int /*<<< orphan*/ * diff_print_one_raw ; 
 int /*<<< orphan*/ * diff_print_patch_binary ; 
 int /*<<< orphan*/ * diff_print_patch_file ; 
 int /*<<< orphan*/ * diff_print_patch_hunk ; 
 int /*<<< orphan*/ * diff_print_patch_line ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

int FUNC5(
	git_diff *diff,
	git_diff_format_t format,
	git_diff_line_cb print_cb,
	void *payload)
{
	int error;
	git_buf buf = GIT_BUF_INIT;
	diff_print_info pi;
	git_diff_file_cb print_file = NULL;
	git_diff_binary_cb print_binary = NULL;
	git_diff_hunk_cb print_hunk = NULL;
	git_diff_line_cb print_line = NULL;

	switch (format) {
	case GIT_DIFF_FORMAT_PATCH:
		print_file = diff_print_patch_file;
		print_binary = diff_print_patch_binary;
		print_hunk = diff_print_patch_hunk;
		print_line = diff_print_patch_line;
		break;
	case GIT_DIFF_FORMAT_PATCH_HEADER:
		print_file = diff_print_patch_file;
		break;
	case GIT_DIFF_FORMAT_RAW:
		print_file = diff_print_one_raw;
		break;
	case GIT_DIFF_FORMAT_NAME_ONLY:
		print_file = diff_print_one_name_only;
		break;
	case GIT_DIFF_FORMAT_NAME_STATUS:
		print_file = diff_print_one_name_status;
		break;
	default:
		FUNC3(GIT_ERROR_INVALID, "unknown diff output format (%d)", format);
		return -1;
	}

	if (!(error = FUNC0(
			&pi, &buf, diff, format, print_cb, payload))) {
		error = FUNC2(
			diff, print_file, print_binary, print_hunk, print_line, &pi);

		if (error) /* make sure error message is set */
			FUNC4(error, "git_diff_print");
	}

	FUNC1(&buf);

	return error;
}