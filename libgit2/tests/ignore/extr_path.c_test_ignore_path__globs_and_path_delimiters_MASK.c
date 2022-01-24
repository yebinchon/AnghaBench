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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC1("attr/.gitignore", "foo/bar/**");
	FUNC0(true, "foo/bar/baz");
	FUNC0(true, "foo/bar/baz/quux");

	FUNC1("attr/.gitignore", "_*/");
	FUNC0(true, "sub/_test/a/file");
	FUNC0(false, "test_folder/file");
	FUNC0(true, "_test/file");
	FUNC0(true, "_test/a/file");

	FUNC1("attr/.gitignore", "**/_*/");
	FUNC0(true, "sub/_test/a/file");
	FUNC0(false, "test_folder/file");
	FUNC0(true, "_test/file");
	FUNC0(true, "_test/a/file");

	FUNC1("attr/.gitignore", "**/_*/foo/bar/*ux");

	FUNC0(true, "sub/_test/foo/bar/qux/file");
	FUNC0(true, "_test/foo/bar/qux/file");
	FUNC0(true, "_test/foo/bar/crux/file");
	FUNC0(false, "_test/foo/bar/code/file");
}