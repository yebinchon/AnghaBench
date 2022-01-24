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
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

uiBox *FUNC6(void)
{
	uiBox *page11;
	uiBox *ns;
	uiBox *s;

	page11 = FUNC0();

	ns = FUNC1();
	FUNC4(ns, FUNC5(FUNC2("", 0)), 0);
	FUNC4(ns, FUNC5(FUNC2("", 1)), 0);
	FUNC4(ns, FUNC5(FUNC2("Group", 0)), 0);
	FUNC4(ns, FUNC5(FUNC2("Group", 1)), 0);
	FUNC4(ns, FUNC5(FUNC3(0)), 0);
	FUNC4(ns, FUNC5(FUNC3(1)), 0);
	FUNC4(page11, FUNC5(ns), 1);

	s = FUNC1();
	FUNC4(s, FUNC5(FUNC2("", 0)), 1);
	FUNC4(s, FUNC5(FUNC2("", 1)), 1);
	FUNC4(s, FUNC5(FUNC2("Group", 0)), 1);
	FUNC4(s, FUNC5(FUNC2("Group", 1)), 1);
	FUNC4(s, FUNC5(FUNC3(0)), 1);
	FUNC4(s, FUNC5(FUNC3(1)), 1);
	FUNC4(page11, FUNC5(s), 1);

	return page11;
}