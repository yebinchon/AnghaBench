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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  git_win32_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void FUNC6(const char *utf8_in, const wchar_t *utf16_expected)
{
#ifdef GIT_WIN32
	git_win32_path path_utf16;
	int path_utf16len;

	cl_assert((path_utf16len = git_win32_path_from_utf8(path_utf16, utf8_in)) >= 0);
	cl_assert_equal_wcs(utf16_expected, path_utf16);
	cl_assert_equal_i(wcslen(utf16_expected), path_utf16len);
#else
	FUNC0(utf8_in);
	FUNC0(utf16_expected);
#endif
}