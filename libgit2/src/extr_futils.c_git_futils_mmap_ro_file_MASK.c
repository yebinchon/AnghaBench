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
typedef  scalar_t__ git_off_t ;
typedef  int /*<<< orphan*/  git_map ;
typedef  scalar_t__ git_file ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

int FUNC6(git_map *out, const char *path)
{
	git_file fd = FUNC4(path);
	git_off_t len;
	int result;

	if (fd < 0)
		return fd;

	if ((len = FUNC2(fd)) < 0) {
		result = -1;
		goto out;
	}

	if (!FUNC0(len)) {
		FUNC1(GIT_ERROR_OS, "file `%s` too large to mmap", path);
		result = -1;
		goto out;
	}

	result = FUNC3(out, fd, 0, (size_t)len);
out:
	FUNC5(fd);
	return result;
}