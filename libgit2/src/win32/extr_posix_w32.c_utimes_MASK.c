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
struct p_timeval {int dummy; } ;
struct open_opts {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  git_win32_path ;
typedef  int DWORD ;

/* Variables and functions */
 int FILE_ATTRIBUTE_READONLY ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct open_opts*) ; 
 int /*<<< orphan*/  FUNC8 (struct open_opts*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,struct p_timeval const*) ; 

int FUNC10(const char *path, const struct p_timeval times[2])
{
	git_win32_path wpath;
	int fd, error;
	DWORD attrs_orig, attrs_new = 0;
	struct open_opts opts = { 0 };

	if (FUNC6(wpath, path) < 0)
		return -1;

	attrs_orig = FUNC0(wpath);

	if (attrs_orig & FILE_ATTRIBUTE_READONLY) {
		attrs_new = attrs_orig & ~FILE_ATTRIBUTE_READONLY;

		if (!FUNC2(wpath, attrs_new)) {
			FUNC5(GIT_ERROR_OS, "failed to set attributes");
			return -1;
		}
	}

	FUNC8(&opts, O_RDWR, 0);

	if ((fd = FUNC7(wpath, &opts)) < 0) {
		error = -1;
		goto done;
	}

	error = FUNC9(fd, times);
	FUNC4(fd);

done:
	if (attrs_orig != attrs_new) {
		DWORD os_error = FUNC1();
		FUNC2(wpath, attrs_orig);
		FUNC3(os_error);
	}

	return error;
}