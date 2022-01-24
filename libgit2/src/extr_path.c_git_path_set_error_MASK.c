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
#define  EACCES 133 
#define  EEXIST 132 
#define  EINVAL 131 
#define  ENAMETOOLONG 130 
#define  ENOENT 129 
#define  ENOTDIR 128 
 int GIT_EEXISTS ; 
 int GIT_EINVALIDSPEC ; 
 int GIT_ELOCKED ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 

int FUNC1(int errno_value, const char *path, const char *action)
{
	switch (errno_value) {
	case ENOENT:
	case ENOTDIR:
		FUNC0(GIT_ERROR_OS, "could not find '%s' to %s", path, action);
		return GIT_ENOTFOUND;

	case EINVAL:
	case ENAMETOOLONG:
		FUNC0(GIT_ERROR_OS, "invalid path for filesystem '%s'", path);
		return GIT_EINVALIDSPEC;

	case EEXIST:
		FUNC0(GIT_ERROR_OS, "failed %s - '%s' already exists", action, path);
		return GIT_EEXISTS;

	case EACCES:
		FUNC0(GIT_ERROR_OS, "failed %s - '%s' is locked", action, path);
		return GIT_ELOCKED;

	default:
		FUNC0(GIT_ERROR_OS, "could not %s '%s'", action, path);
		return -1;
	}
}