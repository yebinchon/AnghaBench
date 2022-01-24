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
typedef  int uint32_t ;
struct stat {int dummy; } ;
struct git_futils_mkdir_options {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_7__ {char const* ptr; scalar_t__ size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int GIT_MKDIR_PATH ; 
 int GIT_MKDIR_SKIP_LAST ; 
 int GIT_MKDIR_SKIP_LAST2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (char const*,char*,int /*<<< orphan*/ ,int,struct git_futils_mkdir_options*) ; 
 int FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (char*,struct stat*,int /*<<< orphan*/ ,int,struct git_futils_mkdir_options*) ; 
 int FUNC9 (char*,struct stat*,int,int /*<<< orphan*/ ,int,struct git_futils_mkdir_options*) ; 
 int FUNC10 (char*,struct stat*) ; 

int FUNC11(
	const char *path,
	mode_t mode,
	uint32_t flags)
{
	git_buf make_path = GIT_BUF_INIT, parent_path = GIT_BUF_INIT;
	const char *relative;
	struct git_futils_mkdir_options opts = { 0 };
	struct stat st;
	size_t depth = 0;
	int len = 0, root_len, error;

	if ((error = FUNC2(&make_path, path)) < 0 ||
		(error = FUNC7(&make_path, flags)) < 0 ||
		(error = FUNC2(&parent_path, make_path.ptr)) < 0 ||
		make_path.size == 0)
		goto done;

	root_len = FUNC6(make_path.ptr);

	/* find the first parent directory that exists.  this will be used
	 * as the base to dirname_relative.
	 */
	for (relative = make_path.ptr; parent_path.size; ) {
		error = FUNC10(parent_path.ptr, &st);

		if (error == 0) {
			break;
		} else if (errno != ENOENT) {
			FUNC3(GIT_ERROR_OS, "failed to stat '%s'", parent_path.ptr);
			error = -1;
			goto done;
		}

		depth++;

		/* examine the parent of the current path */
		if ((len = FUNC5(&parent_path, parent_path.ptr)) < 0) {
			error = len;
			goto done;
		}

		FUNC0(len);

		/*
		 * We've walked all the given path's parents and it's either relative
		 * (the parent is simply '.') or rooted (the length is less than or
		 * equal to length of the root path).  The path may be less than the
		 * root path length on Windows, where `C:` == `C:/`.
		 */
		if ((len == 1 && parent_path.ptr[0] == '.') ||
		    (len == 1 && parent_path.ptr[0] == '/') ||
		    len <= root_len) {
			relative = make_path.ptr;
			break;
		}

		relative = make_path.ptr + len + 1;

		/* not recursive? just make this directory relative to its parent. */
		if ((flags & GIT_MKDIR_PATH) == 0)
			break;
	}

	/* we found an item at the location we're trying to create,
	 * validate it.
	 */
	if (depth == 0) {
		error = FUNC8(make_path.ptr, &st, mode, flags, &opts);

		if (!error)
			error = FUNC9(
				make_path.ptr, &st, true, mode, flags, &opts);

		goto done;
	}

	/* we already took `SKIP_LAST` and `SKIP_LAST2` into account when
	 * canonicalizing `make_path`.
	 */
	flags &= ~(GIT_MKDIR_SKIP_LAST2 | GIT_MKDIR_SKIP_LAST);

	error = FUNC4(relative,
		parent_path.size ? parent_path.ptr : NULL, mode, flags, &opts);

done:
	FUNC1(&make_path);
	FUNC1(&parent_path);
	return error;
}