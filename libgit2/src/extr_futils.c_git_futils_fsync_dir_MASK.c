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

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 

int FUNC5(const char *path)
{
#ifdef GIT_WIN32
	GIT_UNUSED(path);
	return 0;
#else
	int fd, error = -1;

	if ((fd = FUNC4(path, O_RDONLY)) < 0) {
		FUNC1(GIT_ERROR_OS, "failed to open directory '%s' for fsync", path);
		return -1;
	}

	if ((error = FUNC3(fd)) < 0)
		FUNC1(GIT_ERROR_OS, "failed to fsync directory '%s'", path);

	FUNC2(fd);
	return error;
#endif
}