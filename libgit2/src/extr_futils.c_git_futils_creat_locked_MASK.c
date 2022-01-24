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
#define  EEXIST 129 
#define  ENOENT 128 
 int GIT_ELOCKED ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int O_BINARY ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/  const) ; 

int FUNC2(const char *path, const mode_t mode)
{
	int fd = FUNC1(path, O_WRONLY | O_CREAT | O_EXCL | O_BINARY | O_CLOEXEC,
		mode);

	if (fd < 0) {
		int error = errno;
		FUNC0(GIT_ERROR_OS, "failed to create locked file '%s'", path);
		switch (error) {
		case EEXIST:
			return GIT_ELOCKED;
		case ENOENT:
			return GIT_ENOTFOUND;
		default:
			return -1;
		}
	}

	return fd;
}