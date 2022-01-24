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
typedef  int mode_t ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 

int FUNC7(git_buf *path_out, const char *filename, mode_t mode)
{
	int fd;
	mode_t mask;

	FUNC6(mask = FUNC6(0));

	FUNC2(path_out, filename);
	FUNC1(path_out, "_git2_XXXXXX");

	if (FUNC0(path_out))
		return -1;

	if ((fd = FUNC5(path_out->ptr)) < 0) {
		FUNC3(GIT_ERROR_OS,
			"failed to create temporary file '%s'", path_out->ptr);
		return -1;
	}

	if (FUNC4(path_out->ptr, (mode & ~mask))) {
		FUNC3(GIT_ERROR_OS,
			"failed to set permissions on file '%s'", path_out->ptr);
		return -1;
	}

	return fd;
}