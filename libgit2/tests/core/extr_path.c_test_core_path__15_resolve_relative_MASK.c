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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_buf buf = GIT_BUF_INIT;

	FUNC0(&buf, "", "");
	FUNC0(&buf, "", ".");
	FUNC0(&buf, "", "./");
	FUNC0(&buf, "..", "..");
	FUNC0(&buf, "../", "../");
	FUNC0(&buf, "..", "./..");
	FUNC0(&buf, "../", "./../");
	FUNC0(&buf, "../", "../.");
	FUNC0(&buf, "../", ".././");
	FUNC0(&buf, "../..", "../..");
	FUNC0(&buf, "../../", "../../");

	FUNC0(&buf, "/", "/");
	FUNC0(&buf, "/", "/.");

	FUNC0(&buf, "", "a/..");
	FUNC0(&buf, "", "a/../");
	FUNC0(&buf, "", "a/../.");

	FUNC0(&buf, "/a", "/a");
	FUNC0(&buf, "/a/", "/a/.");
	FUNC0(&buf, "/", "/a/../");
	FUNC0(&buf, "/", "/a/../.");
	FUNC0(&buf, "/", "/a/.././");

	FUNC0(&buf, "a", "a");
	FUNC0(&buf, "a/", "a/");
	FUNC0(&buf, "a/", "a/.");
	FUNC0(&buf, "a/", "a/./");

	FUNC0(&buf, "a/b", "a//b");
	FUNC0(&buf, "a/b/c", "a/b/c");
	FUNC0(&buf, "b/c", "./b/c");
	FUNC0(&buf, "a/c", "a/./c");
	FUNC0(&buf, "a/b/", "a/b/.");

	FUNC0(&buf, "/a/b/c", "///a/b/c");
	FUNC0(&buf, "/", "////");
	FUNC0(&buf, "/a", "///a");
	FUNC0(&buf, "/", "///.");
	FUNC0(&buf, "/", "///a/..");

	FUNC0(&buf, "../../path", "../../test//../././path");
	FUNC0(&buf, "../d", "a/b/../../../c/../d");

	FUNC2(FUNC4(&buf, "/.."));
	FUNC1(FUNC5(&buf, 0));

	FUNC2(FUNC4(&buf, "/./.."));
	FUNC1(FUNC5(&buf, 0));

	FUNC2(FUNC4(&buf, "/.//.."));
	FUNC1(FUNC5(&buf, 0));

	FUNC2(FUNC4(&buf, "/../."));
	FUNC1(FUNC5(&buf, 0));

	FUNC2(FUNC4(&buf, "/../.././../a"));
	FUNC1(FUNC5(&buf, 0));

	FUNC2(FUNC4(&buf, "////.."));
	FUNC1(FUNC5(&buf, 0));

	/* things that start with Windows network paths */
#ifdef GIT_WIN32
	assert_resolve_relative(&buf, "//a/b/c", "//a/b/c");
	assert_resolve_relative(&buf, "//a/", "//a/b/..");
	assert_resolve_relative(&buf, "//a/b/c", "//a/Q/../b/x/y/../../c");

	cl_git_pass(git_buf_sets(&buf, "//a/b/../.."));
	cl_git_fail(git_path_resolve_relative(&buf, 0));
#else
	FUNC0(&buf, "/a/b/c", "//a/b/c");
	FUNC0(&buf, "/a/", "//a/b/..");
	FUNC0(&buf, "/a/b/c", "//a/Q/../b/x/y/../../c");
	FUNC0(&buf, "/", "//a/b/../..");
#endif

	FUNC3(&buf);
}