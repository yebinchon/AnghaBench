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
typedef  int /*<<< orphan*/  git_filebuf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

void FUNC11(void)
{
#ifndef GIT_WIN32
	FUNC3();
#else
	git_filebuf file = GIT_FILEBUF_INIT;
	char *dir = "hidden", *test = "hidden/test";
	bool hidden;

	cl_git_pass(p_mkdir(dir, 0666));
	cl_git_mkfile(test, "dummy content");

	cl_git_pass(git_win32__set_hidden(test, true));
	cl_git_pass(git_win32__hidden(&hidden, test));
	cl_assert(hidden);

	cl_git_pass(git_filebuf_open(&file, test, 0, 0666));

	cl_git_pass(git_filebuf_printf(&file, "%s\n", "libgit2 rocks"));

	cl_git_pass(git_filebuf_commit(&file));

	git_filebuf_cleanup(&file);
#endif
}