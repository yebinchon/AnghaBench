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
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8(void)
{
#ifdef GIT_WIN32
	char *shortname;

	if (!cl_sandbox_supports_8dot3())
		clar__skip();

	/* Some guaranteed short names */
	cl_assert_equal_s("PROGRA~1", (shortname = git_win32_path_8dot3_name("C:\\Program Files")));
	git__free(shortname);

	cl_assert_equal_s("WINDOWS", (shortname = git_win32_path_8dot3_name("C:\\WINDOWS")));
	git__free(shortname);

	/* Create some predictible short names */
	cl_must_pass(p_mkdir(".foo", 0777));
	cl_assert_equal_s("FOO~1", (shortname = git_win32_path_8dot3_name(".foo")));
	git__free(shortname);

	cl_git_write2file("bar~1", "foobar\n", 7, O_RDWR|O_CREAT, 0666);
	cl_must_pass(p_mkdir(".bar", 0777));
	cl_assert_equal_s("BAR~2", (shortname = git_win32_path_8dot3_name(".bar")));
	git__free(shortname);
#endif
}