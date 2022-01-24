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
	FUNC0("acrt", "a[c-c]st", 0, 0, 0, 0);
	FUNC0("acrt", "a[c-c]rt", 1, 1, 1, 1);
	FUNC0("]", "[!]-]", 0, 0, 0, 0);
	FUNC0("a", "[!]-]", 1, 1, 1, 1);
	FUNC0("", "\\", 0, 0, 0, 0);
	FUNC0("\\", "\\", 0, 0, 0, 0);
	FUNC0("XXX/\\", "*/\\", 0, 0, 0, 0);
	FUNC0("XXX/\\", "*/\\\\", 1, 1, 1, 1);
	FUNC0("foo", "foo", 1, 1, 1, 1);
	FUNC0("@foo", "@foo", 1, 1, 1, 1);
	FUNC0("foo", "@foo", 0, 0, 0, 0);
	FUNC0("[ab]", "\\[ab]", 1, 1, 1, 1);
	FUNC0("[ab]", "[[]ab]", 1, 1, 1, 1);
	FUNC0("[ab]", "[[:]ab]", 1, 1, 1, 1);
	FUNC0("[ab]", "[[::]ab]", 0, 0, 0, 0);
	FUNC0("[ab]", "[[:digit]ab]", 1, 1, 1, 1);
	FUNC0("[ab]", "[\\[:]ab]", 1, 1, 1, 1);
	FUNC0("?a?b", "\\??\\?b", 1, 1, 1, 1);
	FUNC0("abc", "\\a\\b\\c", 1, 1, 1, 1);
	FUNC0("foo", "", 0, 0, 0, 0);
	FUNC0("foo/bar/baz/to", "**/t[o]", 1, 1, 1, 1);
}