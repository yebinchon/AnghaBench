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
typedef  scalar_t__ mode_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 scalar_t__ GIT_FILEMODE_BLOB ; 
 int O_CREAT ; 
 int O_FSYNC ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char const*,int,scalar_t__) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(
	const git_buf *buf,	const char *path, int flags, mode_t mode)
{
	int fd, do_fsync = 0, error = 0;

	if (!flags)
		flags = O_CREAT | O_TRUNC | O_WRONLY;

	if ((flags & O_FSYNC) != 0)
		do_fsync = 1;

	flags &= ~O_FSYNC;

	if (!mode)
		mode = GIT_FILEMODE_BLOB;

	if ((fd = FUNC6(path, flags, mode)) < 0) {
		FUNC2(GIT_ERROR_OS, "could not open '%s' for writing", path);
		return fd;
	}

	if ((error = FUNC7(fd, FUNC0(buf), FUNC1(buf))) < 0) {
		FUNC2(GIT_ERROR_OS, "could not write to '%s'", path);
		(void)FUNC4(fd);
		return error;
	}

	if (do_fsync && (error = FUNC5(fd)) < 0) {
		FUNC2(GIT_ERROR_OS, "could not fsync '%s'", path);
		FUNC4(fd);
		return error;
	}

	if ((error = FUNC4(fd)) < 0) {
		FUNC2(GIT_ERROR_OS, "error while closing '%s'", path);
		return error;
	}

	if (do_fsync && (flags & O_CREAT))
		error = FUNC3(path);

	return error;
}