#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_9__ {scalar_t__ depth; int flags; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ futils__rmdir_data ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 scalar_t__ ENOTEMPTY ; 
 scalar_t__ FUTILS_MAX_DEPTH ; 
 int GIT_RMDIR_REMOVE_BLOCKERS ; 
 int GIT_RMDIR_REMOVE_FILES ; 
 int GIT_RMDIR_SKIP_NONEMPTY ; 
 int GIT_RMDIR_SKIP_ROOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int (*) (void*,TYPE_1__*),TYPE_2__*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *opaque, git_buf *path)
{
	int error = 0;
	futils__rmdir_data *data = opaque;
	struct stat st;

	if (data->depth > FUTILS_MAX_DEPTH)
		error = FUNC1(
			path->ptr, "directory nesting too deep");

	else if ((error = FUNC5(path->ptr, &st)) < 0) {
		if (errno == ENOENT)
			error = 0;
		else if (errno == ENOTDIR) {
			/* asked to remove a/b/c/d/e and a/b is a normal file */
			if ((data->flags & GIT_RMDIR_REMOVE_BLOCKERS) != 0)
				error = FUNC2(path, data->base);
			else
				FUNC1(
					path->ptr, "parent is not directory");
		}
		else
			error = FUNC4(errno, path->ptr, "rmdir");
	}

	else if (FUNC0(st.st_mode)) {
		data->depth++;

		error = FUNC3(path, 0, futils__rmdir_recurs_foreach, data);

		data->depth--;

		if (error < 0)
			return error;

		if (data->depth == 0 && (data->flags & GIT_RMDIR_SKIP_ROOT) != 0)
			return error;

		if ((error = FUNC6(path->ptr)) < 0) {
			if ((data->flags & GIT_RMDIR_SKIP_NONEMPTY) != 0 &&
				(errno == ENOTEMPTY || errno == EEXIST || errno == EBUSY))
				error = 0;
			else
				error = FUNC4(errno, path->ptr, "rmdir");
		}
	}

	else if ((data->flags & GIT_RMDIR_REMOVE_FILES) != 0) {
		if (FUNC7(path->ptr) < 0)
			error = FUNC4(errno, path->ptr, "remove");
	}

	else if ((data->flags & GIT_RMDIR_SKIP_NONEMPTY) == 0)
		error = FUNC1(path->ptr, "still present");

	return error;
}