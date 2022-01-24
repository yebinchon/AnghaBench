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
typedef  char* git_win32_utf8_path ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_WIN_PATH_UTF8 ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,char*,int) ; 

int FUNC5(git_win32_utf8_path dest, const wchar_t *src)
{
	char *out = dest;
	int len;

	/* Strip NT namespacing "\\?\" */
	if (FUNC3(src)) {
		src += 4;

		/* "\\?\UNC\server\share" -> "\\server\share" */
		if (FUNC4(src, L"UNC\\", 4) == 0) {
			src += 4;

			FUNC2(dest, "\\\\", 2);
			out = dest + 2;
		}
	}

	if ((len = FUNC0(out, GIT_WIN_PATH_UTF8, src)) < 0)
		return len;

	FUNC1(dest);

	return len;
}