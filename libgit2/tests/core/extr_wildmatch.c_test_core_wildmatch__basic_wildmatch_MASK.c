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
	FUNC0("foo", "foo", 1, 1, 1, 1);
	FUNC0("foo", "bar", 0, 0, 0, 0);
	FUNC0("", "", 1, 1, 1, 1);
	FUNC0("foo", "???", 1, 1, 1, 1);
	FUNC0("foo", "??", 0, 0, 0, 0);
	FUNC0("foo", "*", 1, 1, 1, 1);
	FUNC0("foo", "f*", 1, 1, 1, 1);
	FUNC0("foo", "*f", 0, 0, 0, 0);
	FUNC0("foo", "*foo*", 1, 1, 1, 1);
	FUNC0("foobar", "*ob*a*r*", 1, 1, 1, 1);
	FUNC0("aaaaaaabababab", "*ab", 1, 1, 1, 1);
	FUNC0("foo*", "foo\\*", 1, 1, 1, 1);
	FUNC0("foobar", "foo\\*bar", 0, 0, 0, 0);
	FUNC0("f\\oo", "f\\\\oo", 1, 1, 1, 1);
	FUNC0("ball", "*[al]?", 1, 1, 1, 1);
	FUNC0("ten", "[ten]", 0, 0, 0, 0);
	FUNC0("ten", "**[!te]", 1, 1, 1, 1);
	FUNC0("ten", "**[!ten]", 0, 0, 0, 0);
	FUNC0("ten", "t[a-g]n", 1, 1, 1, 1);
	FUNC0("ten", "t[!a-g]n", 0, 0, 0, 0);
	FUNC0("ton", "t[!a-g]n", 1, 1, 1, 1);
	FUNC0("ton", "t[^a-g]n", 1, 1, 1, 1);
	FUNC0("a]b", "a[]]b", 1, 1, 1, 1);
	FUNC0("a-b", "a[]-]b", 1, 1, 1, 1);
	FUNC0("a]b", "a[]-]b", 1, 1, 1, 1);
	FUNC0("aab", "a[]-]b", 0, 0, 0, 0);
	FUNC0("aab", "a[]a-]b", 1, 1, 1, 1);
	FUNC0("]", "]", 1, 1, 1, 1);
}