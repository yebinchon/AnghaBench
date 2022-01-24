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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *path, mode_t mode)
{
	int fd;

	if ((fd = FUNC2(path, mode)) < 0) {
		FUNC0(GIT_ERROR_OS, "error while creating '%s'", path);
		return -1;
	}

	if (FUNC1(fd) < 0) {
		FUNC0(GIT_ERROR_OS, "error while closing '%s'", path);
		return -1;
	}

	return 0;
}