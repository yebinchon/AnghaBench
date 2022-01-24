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
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	FUNC0("foo.c", "/path/to/foo.c", "/path/to", 0);
	FUNC0("bar/foo.c", "/path/to/bar/foo.c", "/path/to", 0);
	FUNC0("foo.c", "/path/to/foo.c", "/path/to/", 0);

	FUNC0("", "/path/to", "/path/to", 0);
	FUNC0("", "/path/to", "/path/to/", 0);

	FUNC0("../", "/path/to", "/path/to/foo", 0);

	FUNC0("../foo.c", "/path/to/foo.c", "/path/to/bar", 0);
	FUNC0("../bar/foo.c", "/path/to/bar/foo.c", "/path/to/baz", 0);

	FUNC0("../../foo.c", "/path/to/foo.c", "/path/to/foo/bar", 0);
	FUNC0("../../foo/bar.c", "/path/to/foo/bar.c", "/path/to/bar/foo", 0);

	FUNC0("../../foo.c", "/foo.c", "/bar/foo", 0);

	FUNC0("foo.c", "/path/to/foo.c", "/path/to/", 0);
	FUNC0("../foo.c", "/path/to/foo.c", "/path/to/bar/", 0);

	FUNC0("foo.c", "d:/path/to/foo.c", "d:/path/to", 0);

	FUNC0("../foo", "/foo", "/bar", 0);
	FUNC0("path/to/foo.c", "/path/to/foo.c", "/", 0);
	FUNC0("../foo", "path/to/foo", "path/to/bar", 0);

	FUNC0("/path/to/foo.c", "/path/to/foo.c", "d:/path/to", GIT_ENOTFOUND);
	FUNC0("d:/path/to/foo.c", "d:/path/to/foo.c", "/path/to", GIT_ENOTFOUND);
	
	FUNC0("/path/to/foo.c", "/path/to/foo.c", "not-a-rooted-path", GIT_ENOTFOUND);
	FUNC0("not-a-rooted-path", "not-a-rooted-path", "/path/to", GIT_ENOTFOUND);
	
	FUNC0("/path", "/path", "pathtofoo", GIT_ENOTFOUND);
	FUNC0("path", "path", "pathtofoo", GIT_ENOTFOUND);
}