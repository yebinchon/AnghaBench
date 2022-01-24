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
typedef  int /*<<< orphan*/  git_win32_path ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOTDIR ; 
#define  ERROR_DIRECTORY 129 
#define  ERROR_SHARING_VIOLATION 128 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 

int FUNC3(const char* path)
{
	git_win32_path buf;
	int error;

	if (FUNC2(buf, path) < 0)
		return -1;

	error = FUNC1(buf);

	if (error == -1) {
		switch (FUNC0()) {
			/* _wrmdir() is documented to return EACCES if "A program has an open
			 * handle to the directory."  This sounds like what everybody else calls
			 * EBUSY.  Let's convert appropriate error codes.
			 */
			case ERROR_SHARING_VIOLATION:
				errno = EBUSY;
				break;

			/* This error can be returned when trying to rmdir an extant file. */
			case ERROR_DIRECTORY:
				errno = ENOTDIR;
				break;
		}
	}

	return error;
}