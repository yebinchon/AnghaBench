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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	git_buf path = GIT_BUF_INIT;

	FUNC0(
		GIT_ENOTFOUND, FUNC4(&path, "nonexistentfile"));

	FUNC1(FUNC2("HOME", "doesnotexist"));
#ifdef GIT_WIN32
	cl_git_pass(cl_setenv("HOMEPATH", "doesnotexist"));
	cl_git_pass(cl_setenv("USERPROFILE", "doesnotexist"));
#endif
	FUNC6();

	FUNC0(
		GIT_ENOTFOUND, FUNC4(&path, "nonexistentfile"));

	FUNC1(FUNC2("HOME", NULL));
#ifdef GIT_WIN32
	cl_git_pass(cl_setenv("HOMEPATH", NULL));
	cl_git_pass(cl_setenv("USERPROFILE", NULL));
#endif
	FUNC6();
	FUNC7();

	FUNC0(
		GIT_ENOTFOUND, FUNC4(&path, "nonexistentfile"));

	FUNC0(
		GIT_ENOTFOUND, FUNC5(&path, "nonexistentfile"));

#ifdef GIT_WIN32
	cl_git_pass(cl_setenv("PROGRAMFILES", NULL));
	set_system_search_path_from_env();

	cl_assert_equal_i(
		GIT_ENOTFOUND, git_sysdir_find_system_file(&path, "nonexistentfile"));
#endif

	FUNC3(&path);
}