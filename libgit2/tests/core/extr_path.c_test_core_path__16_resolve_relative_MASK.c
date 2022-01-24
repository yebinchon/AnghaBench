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
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 

void FUNC1(void)
{
	FUNC0(0, "", "");
	FUNC0(0, "", "bar.txt");
	FUNC0(0, "foo.txt", "bar.txt");
	FUNC0(0, "foo.txt", "");
	FUNC0(0, "foo/bar.txt", "bar/foo.txt");
	FUNC0(0, "foo/bar.txt", "../foo.txt");

	FUNC0(1, "/one.txt", "/two.txt");
	FUNC0(4, "foo/one.txt", "foo/two.txt");
	FUNC0(5, "/foo/one.txt", "/foo/two.txt");

	FUNC0(6, "a/b/c/foo.txt", "a/b/c/d/e/bar.txt");
	FUNC0(7, "/a/b/c/foo.txt", "/a/b/c/d/e/bar.txt");
}