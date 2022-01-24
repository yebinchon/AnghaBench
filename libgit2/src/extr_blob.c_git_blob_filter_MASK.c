#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  int /*<<< orphan*/  git_filter_flag_t ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ git_blob_filter_options ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD ; 
 int GIT_BLOB_FILTER_CHECK_FOR_BINARY ; 
 int GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES ; 
 TYPE_1__ GIT_BLOB_FILTER_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_BLOB_FILTER_OPTIONS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_FILTER_ATTRIBUTES_FROM_HEAD ; 
 int /*<<< orphan*/  GIT_FILTER_DEFAULT ; 
 int /*<<< orphan*/  GIT_FILTER_NO_SYSTEM_ATTRIBUTES ; 
 int /*<<< orphan*/  GIT_FILTER_TO_WORKTREE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int) ; 

int FUNC9(
	git_buf *out,
	git_blob *blob,
	const char *path,
	git_blob_filter_options *given_opts)
{
	int error = 0;
	git_filter_list *fl = NULL;
	git_blob_filter_options opts = GIT_BLOB_FILTER_OPTIONS_INIT;
	git_filter_flag_t flags = GIT_FILTER_DEFAULT;

	FUNC1(blob && path && out);

	FUNC4(out);

	FUNC0(
		given_opts, GIT_BLOB_FILTER_OPTIONS_VERSION, "git_blob_filter_options");

	if (given_opts != NULL)
		FUNC8(&opts, given_opts, sizeof(git_blob_filter_options));

	if ((opts.flags & GIT_BLOB_FILTER_CHECK_FOR_BINARY) != 0 &&
	    FUNC2(blob))
		return 0;

	if ((opts.flags & GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES) != 0)
		flags |= GIT_FILTER_NO_SYSTEM_ATTRIBUTES;

	if ((opts.flags & GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD) != 0)
		flags |= GIT_FILTER_ATTRIBUTES_FROM_HEAD;

	if (!(error = FUNC7(
			&fl, FUNC3(blob), blob, path,
			GIT_FILTER_TO_WORKTREE, flags))) {

		error = FUNC5(out, fl, blob);

		FUNC6(fl);
	}

	return error;
}