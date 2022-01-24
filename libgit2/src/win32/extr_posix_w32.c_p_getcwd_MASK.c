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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  git_win32_path ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  GIT_WIN_PATH_UTF16 ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char*,size_t,int /*<<< orphan*/ *) ; 

int FUNC3(char *buffer_out, size_t size)
{
	git_win32_path buf;
	wchar_t *cwd = FUNC1(buf, GIT_WIN_PATH_UTF16);

	if (!cwd)
		return -1;

	/* Convert the working directory back to UTF-8 */
	if (FUNC2(buffer_out, size, cwd) < 0) {
		DWORD code = FUNC0();

		if (code == ERROR_INSUFFICIENT_BUFFER)
			errno = ERANGE;
		else
			errno = EINVAL;

		return -1;
	}

	return 0;
}