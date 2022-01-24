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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_5__ {char const* base; int flags; int /*<<< orphan*/  baselen; } ;
typedef  TYPE_1__ futils__rmdir_data ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ITEROVER ; 
 int GIT_RMDIR_EMPTY_PARENTS ; 
 int /*<<< orphan*/  futils__rmdir_empty_parent ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int FUNC7(
	const char *path, const char *base, uint32_t flags)
{
	int error;
	git_buf fullpath = GIT_BUF_INIT;
	futils__rmdir_data data;

	/* build path and find "root" where we should start calling mkdir */
	if (FUNC3(&fullpath, path, base, NULL) < 0)
		return -1;

	FUNC5(&data, 0, sizeof(data));
	data.base    = base ? base : "";
	data.baselen = base ? FUNC6(base) : 0;
	data.flags   = flags;

	error = FUNC0(&data, &fullpath);

	/* remove now-empty parents if requested */
	if (!error && (flags & GIT_RMDIR_EMPTY_PARENTS) != 0)
		error = FUNC4(
			&fullpath, base, futils__rmdir_empty_parent, &data);

	if (error == GIT_ITEROVER) {
		FUNC2();
		error = 0;
	}

	FUNC1(&fullpath);

	return error;
}