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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int) ; 

void FUNC1(void)
{
	FUNC0("foo/baz/bar", "foo*bar", 0, 0, 1, 1);
	FUNC0("foo/baz/bar", "foo**bar", 0, 0, 1, 1);
	FUNC0("foobazbar", "foo**bar", 1, 1, 1, 1);
	FUNC0("foo/baz/bar", "foo/**/bar", 1, 1, 1, 1);
	FUNC0("foo/baz/bar", "foo/**/**/bar", 1, 1, 0, 0);
	FUNC0("foo/b/a/z/bar", "foo/**/bar", 1, 1, 1, 1);
	FUNC0("foo/b/a/z/bar", "foo/**/**/bar", 1, 1, 1, 1);
	FUNC0("foo/bar", "foo/**/bar", 1, 1, 0, 0);
	FUNC0("foo/bar", "foo/**/**/bar", 1, 1, 0, 0);
	FUNC0("foo/bar", "foo?bar", 0, 0, 1, 1);
	FUNC0("foo/bar", "foo[/]bar", 0, 0, 1, 1);
	FUNC0("foo/bar", "foo[^a-z]bar", 0, 0, 1, 1);
	FUNC0("foo/bar", "f[^eiu][^eiu][^eiu][^eiu][^eiu]r", 0, 0, 1, 1);
	FUNC0("foo-bar", "f[^eiu][^eiu][^eiu][^eiu][^eiu]r", 1, 1, 1, 1);
	FUNC0("foo", "**/foo", 1, 1, 0, 0);
	FUNC0("XXX/foo", "**/foo", 1, 1, 1, 1);
	FUNC0("bar/baz/foo", "**/foo", 1, 1, 1, 1);
	FUNC0("bar/baz/foo", "*/foo", 0, 0, 1, 1);
	FUNC0("foo/bar/baz", "**/bar*", 0, 0, 1, 1);
	FUNC0("deep/foo/bar/baz", "**/bar/*", 1, 1, 1, 1);
	FUNC0("deep/foo/bar/baz/", "**/bar/*", 0, 0, 1, 1);
	FUNC0("deep/foo/bar/baz/", "**/bar/**", 1, 1, 1, 1);
	FUNC0("deep/foo/bar", "**/bar/*", 0, 0, 0, 0);
	FUNC0("deep/foo/bar/", "**/bar/**", 1, 1, 1, 1);
	FUNC0("foo/bar/baz", "**/bar**", 0, 0, 1, 1);
	FUNC0("foo/bar/baz/x", "*/bar/**", 1, 1, 1, 1);
	FUNC0("deep/foo/bar/baz/x", "*/bar/**", 0, 0, 1, 1);
	FUNC0("deep/foo/bar/baz/x", "**/bar/*/*", 1, 1, 1, 1);
}