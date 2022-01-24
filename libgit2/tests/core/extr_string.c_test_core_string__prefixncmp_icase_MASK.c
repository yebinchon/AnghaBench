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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int,char*) ; 

void FUNC2(void)
{
	FUNC0(FUNC1("", 0, "") == 0);
	FUNC0(FUNC1("a", 1, "") == 0);
	FUNC0(FUNC1("", 0, "a") < 0);
	FUNC0(FUNC1("a", 1, "b") < 0);
	FUNC0(FUNC1("A", 1, "b") < 0);
	FUNC0(FUNC1("a", 1, "B") < 0);
	FUNC0(FUNC1("b", 1, "a") > 0);
	FUNC0(FUNC1("B", 1, "a") > 0);
	FUNC0(FUNC1("b", 1, "A") > 0);
	FUNC0(FUNC1("ab", 2, "a") == 0);
	FUNC0(FUNC1("Ab", 2, "a") == 0);
	FUNC0(FUNC1("ab", 2, "A") == 0);
	FUNC0(FUNC1("ab", 1, "a") == 0);
	FUNC0(FUNC1("ab", 2, "ac") < 0);
	FUNC0(FUNC1("Ab", 2, "ac") < 0);
	FUNC0(FUNC1("ab", 2, "Ac") < 0);
	FUNC0(FUNC1("a", 1, "ac") < 0);
	FUNC0(FUNC1("ab", 1, "ac") < 0);
	FUNC0(FUNC1("ab", 2, "aa") > 0);
	FUNC0(FUNC1("ab", 1, "aa") < 0);
}