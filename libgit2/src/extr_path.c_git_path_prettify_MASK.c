#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int GIT_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*,char const*) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 

int FUNC7(git_buf *path_out, const char *path, const char *base)
{
	char buf[GIT_PATH_MAX];

	FUNC0(path && path_out);

	/* construct path if needed */
	if (base != NULL && FUNC5(path) < 0) {
		if (FUNC2(path_out, base, path) < 0)
			return -1;
		path = path_out->ptr;
	}

	if (FUNC6(path, buf) == NULL) {
		/* git_error_set resets the errno when dealing with a GIT_ERROR_OS kind of error */
		int error = (errno == ENOENT || errno == ENOTDIR) ? GIT_ENOTFOUND : -1;
		FUNC4(GIT_ERROR_OS, "failed to resolve path '%s'", path);

		FUNC1(path_out);

		return error;
	}

	return FUNC3(path_out, buf);
}