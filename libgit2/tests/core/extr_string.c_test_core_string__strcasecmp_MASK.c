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
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

void FUNC3(void)
{
	FUNC0(FUNC1("", "") == 0);
	FUNC0(FUNC1("foo", "foo") == 0);
	FUNC0(FUNC1("foo", "Foo") == 0);
	FUNC0(FUNC1("foo", "FOO") == 0);
	FUNC0(FUNC1("foo", "fOO") == 0);

	FUNC0(FUNC2("rt\303\202of", "rt dev\302\266h") > 0);
	FUNC0(FUNC2("e\342\202\254ghi=", "et") > 0);
	FUNC0(FUNC2("rt dev\302\266h", "rt\303\202of") < 0);
	FUNC0(FUNC2("et", "e\342\202\254ghi=") < 0);
	FUNC0(FUNC2("\303\215", "\303\255") < 0);

	FUNC0(FUNC1("rt\303\202of", "rt dev\302\266h") > 0);
	FUNC0(FUNC1("e\342\202\254ghi=", "et") > 0);
	FUNC0(FUNC1("rt dev\302\266h", "rt\303\202of") < 0);
	FUNC0(FUNC1("et", "e\342\202\254ghi=") < 0);
	FUNC0(FUNC1("\303\215", "\303\255") < 0);
}