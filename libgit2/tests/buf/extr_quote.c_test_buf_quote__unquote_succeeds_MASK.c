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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

void FUNC1(void)
{
	FUNC0("", "\"\"");
	FUNC0(" ", "\" \"");
	FUNC0("foo", "\"foo\"");
	FUNC0("foo bar", "\"foo bar\"");
	FUNC0("foo\"bar", "\"foo\\\"bar\"");
	FUNC0("foo\\bar", "\"foo\\\\bar\"");
	FUNC0("foo\tbar", "\"foo\\tbar\"");
	FUNC0("\vfoo\tbar\n", "\"\\vfoo\\tbar\\n\"");
	FUNC0("foo\nbar", "\"foo\\012bar\"");
	FUNC0("foo\r\nbar", "\"foo\\015\\012bar\"");
	FUNC0("foo\r\nbar", "\"\\146\\157\\157\\015\\012\\142\\141\\162\"");
	FUNC0("newline: \n", "\"newline: \\012\"");
	FUNC0("0xff: \377", "\"0xff: \\377\"");
}