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
typedef  int /*<<< orphan*/  git_win32_path ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  GIT_WIN_PATH_UTF16 ; 
 int /*<<< orphan*/  GIT_WIN_PATH_UTF8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 

char *FUNC7(const char *orig_path, char *buffer)
{
	git_win32_path orig_path_w, buffer_w;

	if (FUNC5(orig_path_w, orig_path) < 0)
		return NULL;

	/* Note that if the path provided is a relative path, then the current directory
	 * is used to resolve the path -- which is a concurrency issue because the current
	 * directory is a process-wide variable. */
	if (!FUNC1(orig_path_w, GIT_WIN_PATH_UTF16, buffer_w, NULL)) {
		if (FUNC2() == ERROR_INSUFFICIENT_BUFFER)
			errno = ENAMETOOLONG;
		else
			errno = EINVAL;

		return NULL;
	}

	/* The path must exist. */
	if (FUNC0(buffer_w) == INVALID_FILE_ATTRIBUTES) {
		errno = ENOENT;
		return NULL;
	}

	if (!buffer && !(buffer = FUNC3(GIT_WIN_PATH_UTF8))) {
		errno = ENOMEM;
		return NULL;
	}

	/* Convert the path to UTF-8. If the caller provided a buffer, then it
	 * is assumed to be GIT_WIN_PATH_UTF8 characters in size. If it isn't,
	 * then we may overflow. */
	if (FUNC6(buffer, buffer_w) < 0)
		return NULL;

	FUNC4(buffer);

	return buffer;
}