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
typedef  int /*<<< orphan*/  git_oid ;
typedef  scalar_t__ git_off_t ;
typedef  int /*<<< orphan*/  git_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(git_oid *out, const char *path, git_object_t type)
{
	git_off_t size;
	int result, fd = FUNC3(path);
	if (fd < 0)
		return fd;

	if ((size = FUNC2(fd)) < 0 || !FUNC0(size)) {
		FUNC1(GIT_ERROR_OS, "file size overflow for 32-bit systems");
		FUNC5(fd);
		return -1;
	}

	result = FUNC4(out, fd, (size_t)size, type);
	FUNC5(fd);
	return result;
}