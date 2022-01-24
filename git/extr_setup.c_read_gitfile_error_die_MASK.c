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
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  READ_GITFILE_ERR_INVALID_FORMAT 135 
#define  READ_GITFILE_ERR_NOT_A_FILE 134 
#define  READ_GITFILE_ERR_NOT_A_REPO 133 
#define  READ_GITFILE_ERR_NO_PATH 132 
#define  READ_GITFILE_ERR_OPEN_FAILED 131 
#define  READ_GITFILE_ERR_READ_FAILED 130 
#define  READ_GITFILE_ERR_STAT_FAILED 129 
#define  READ_GITFILE_ERR_TOO_LARGE 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

void FUNC4(int error_code, const char *path, const char *dir)
{
	switch (error_code) {
	case READ_GITFILE_ERR_STAT_FAILED:
	case READ_GITFILE_ERR_NOT_A_FILE:
		/* non-fatal; follow return path */
		break;
	case READ_GITFILE_ERR_OPEN_FAILED:
		FUNC3(FUNC1("error opening '%s'"), path);
	case READ_GITFILE_ERR_TOO_LARGE:
		FUNC2(FUNC1("too large to be a .git file: '%s'"), path);
	case READ_GITFILE_ERR_READ_FAILED:
		FUNC2(FUNC1("error reading %s"), path);
	case READ_GITFILE_ERR_INVALID_FORMAT:
		FUNC2(FUNC1("invalid gitfile format: %s"), path);
	case READ_GITFILE_ERR_NO_PATH:
		FUNC2(FUNC1("no path in gitfile: %s"), path);
	case READ_GITFILE_ERR_NOT_A_REPO:
		FUNC2(FUNC1("not a git repository: %s"), dir);
	default:
		FUNC0("unknown error code");
	}
}