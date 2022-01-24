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
	FUNC0("]", "[\\\\-^]", 1, 1, 1, 1);
	FUNC0("[", "[\\\\-^]", 0, 0, 0, 0);
	FUNC0("-", "[\\-_]", 1, 1, 1, 1);
	FUNC0("]", "[\\]]", 1, 1, 1, 1);
	FUNC0("\\]", "[\\]]", 0, 0, 0, 0);
	FUNC0("\\", "[\\]]", 0, 0, 0, 0);
	FUNC0("ab", "a[]b", 0, 0, 0, 0);
	FUNC0("a[]b", "a[]b", 0, 0, 0, 0);
	FUNC0("ab[", "ab[", 0, 0, 0, 0);
	FUNC0("ab", "[!", 0, 0, 0, 0);
	FUNC0("ab", "[-", 0, 0, 0, 0);
	FUNC0("-", "[-]", 1, 1, 1, 1);
	FUNC0("-", "[a-", 0, 0, 0, 0);
	FUNC0("-", "[!a-", 0, 0, 0, 0);
	FUNC0("-", "[--A]", 1, 1, 1, 1);
	FUNC0("5", "[--A]", 1, 1, 1, 1);
	FUNC0(" ", "[ --]", 1, 1, 1, 1);
	FUNC0("$", "[ --]", 1, 1, 1, 1);
	FUNC0("-", "[ --]", 1, 1, 1, 1);
	FUNC0("0", "[ --]", 0, 0, 0, 0);
	FUNC0("-", "[---]", 1, 1, 1, 1);
	FUNC0("-", "[------]", 1, 1, 1, 1);
	FUNC0("j", "[a-e-n]", 0, 0, 0, 0);
	FUNC0("-", "[a-e-n]", 1, 1, 1, 1);
	FUNC0("a", "[!------]", 1, 1, 1, 1);
	FUNC0("[", "[]-a]", 0, 0, 0, 0);
	FUNC0("^", "[]-a]", 1, 1, 1, 1);
	FUNC0("^", "[!]-a]", 0, 0, 0, 0);
	FUNC0("[", "[!]-a]", 1, 1, 1, 1);
	FUNC0("^", "[a^bc]", 1, 1, 1, 1);
	FUNC0("-b]", "[a-]b]", 1, 1, 1, 1);
	FUNC0("\\", "[\\]", 0, 0, 0, 0);
	FUNC0("\\", "[\\\\]", 1, 1, 1, 1);
	FUNC0("\\", "[!\\\\]", 0, 0, 0, 0);
	FUNC0("G", "[A-\\\\]", 1, 1, 1, 1);
	FUNC0("aaabbb", "b*a", 0, 0, 0, 0);
	FUNC0("aabcaa", "*ba*", 0, 0, 0, 0);
	FUNC0(",", "[,]", 1, 1, 1, 1);
	FUNC0(",", "[\\\\,]", 1, 1, 1, 1);
	FUNC0("\\", "[\\\\,]", 1, 1, 1, 1);
	FUNC0("-", "[,-.]", 1, 1, 1, 1);
	FUNC0("+", "[,-.]", 0, 0, 0, 0);
	FUNC0("-.]", "[,-.]", 0, 0, 0, 0);
	FUNC0("2", "[\\1-\\3]", 1, 1, 1, 1);
	FUNC0("3", "[\\1-\\3]", 1, 1, 1, 1);
	FUNC0("4", "[\\1-\\3]", 0, 0, 0, 0);
	FUNC0("\\", "[[-\\]]", 1, 1, 1, 1);
	FUNC0("[", "[[-\\]]", 1, 1, 1, 1);
	FUNC0("]", "[[-\\]]", 1, 1, 1, 1);
	FUNC0("-", "[[-\\]]", 0, 0, 0, 0);
}