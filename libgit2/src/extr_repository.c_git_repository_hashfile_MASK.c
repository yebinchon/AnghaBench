#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  scalar_t__ git_off_t ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  scalar_t__ git_file ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_FILTER_DEFAULT ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (char const*) ; 

int FUNC13(
	git_oid *out,
	git_repository *repo,
	const char *path,
	git_object_t type,
	const char *as_path)
{
	int error;
	git_filter_list *fl = NULL;
	git_file fd = -1;
	git_off_t len;
	git_buf full_path = GIT_BUF_INIT;

	FUNC0(out && path && repo); /* as_path can be NULL */

	/* At some point, it would be nice if repo could be NULL to just
	 * apply filter rules defined in system and global files, but for
	 * now that is not possible because git_filters_load() needs it.
	 */

	error = FUNC9(
		&full_path, path, FUNC10(repo), NULL);
	if (error < 0)
		return error;

	if (!as_path)
		as_path = path;

	/* passing empty string for "as_path" indicated --no-filters */
	if (FUNC12(as_path) > 0) {
		error = FUNC5(
			&fl, repo, NULL, as_path,
			GIT_FILTER_TO_ODB, GIT_FILTER_DEFAULT);
		if (error < 0)
			return error;
	} else {
		error = 0;
	}

	/* at this point, error is a count of the number of loaded filters */

	fd = FUNC7(full_path.ptr);
	if (fd < 0) {
		error = fd;
		goto cleanup;
	}

	len = FUNC6(fd);
	if (len < 0) {
		error = (int)len;
		goto cleanup;
	}

	if (!FUNC1(len)) {
		FUNC3(GIT_ERROR_OS, "file size overflow for 32-bit systems");
		error = -1;
		goto cleanup;
	}

	error = FUNC8(out, fd, (size_t)len, type, fl);

cleanup:
	if (fd >= 0)
		FUNC11(fd);
	FUNC4(fl);
	FUNC2(&full_path);

	return error;
}