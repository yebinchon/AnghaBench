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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

void FUNC2(void)
{
	git_buf out = GIT_BUF_INIT;

	FUNC1("foo", 0, "foo", NULL);
	FUNC1("foo/bar", 0, "foo/bar", NULL);

	/* Relative paths have base prepended */
	FUNC1("/foo/bar", 4, "bar", "/foo");
	FUNC1("/foo/bar/foobar", 4, "bar/foobar", "/foo");
	FUNC1("c:/foo/bar/foobar", 6, "bar/foobar", "c:/foo");
	FUNC1("c:/foo/bar/foobar", 10, "foobar", "c:/foo/bar");

	/* Absolute paths are not prepended with base */
	FUNC1("/foo", 0, "/foo", "/asdf");
	FUNC1("/foo/bar", 0, "/foo/bar", "/asdf");

	/* Drive letter is given as root length on Windows */
	FUNC1("c:/foo", 2, "c:/foo", "c:/asdf");
	FUNC1("c:/foo/bar", 2, "c:/foo/bar", "c:/asdf");

#ifdef GIT_WIN32
	/* Paths starting with '\\' are absolute */
	test_join_unrooted("\\bar", 0, "\\bar", "c:/foo/");
	test_join_unrooted("\\\\network\\bar", 9, "\\\\network\\bar", "c:/foo/");
#else
	/* Paths starting with '\\' are not absolute on non-Windows systems */
	FUNC1("/foo/\\bar", 4, "\\bar", "/foo");
	FUNC1("c:/foo/\\bar", 7, "\\bar", "c:/foo/");
#endif

	/* Base is returned when it's provided and is the prefix */
	FUNC1("c:/foo/bar/foobar", 6, "c:/foo/bar/foobar", "c:/foo");
	FUNC1("c:/foo/bar/foobar", 10, "c:/foo/bar/foobar", "c:/foo/bar");

	/* Trailing slash in the base is ignored */
	FUNC1("c:/foo/bar/foobar", 6, "c:/foo/bar/foobar", "c:/foo/");

	FUNC0(&out);
}