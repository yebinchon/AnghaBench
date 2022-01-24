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
 int /*<<< orphan*/ * FUNC0 (int,int,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

uiBox *FUNC9(void)
{
	uiBox *page3;
	uiBox *hbox;
	uiBox *hbox2;
	uiBox *vbox;
	int hidden;

	page3 = FUNC1();

	// first the non-stretchy type
	for (hidden = 0; hidden < 4; hidden++) {
		// these two must stay unpadded as well, otherwise the test isn't meaningful
		hbox2 = FUNC2)();
		vbox = FUNC3)();
		// reference set
		hbox = FUNC0(hidden, -1, 0);
		FUNC6(vbox, FUNC7(hbox), 0);
		// real thing
		hbox = FUNC0(-1, hidden, 0);
		FUNC6(vbox, FUNC7(hbox), 0);
		// pack vbox in
		FUNC6(hbox2, FUNC7(vbox), 0);
		// and have a button in there for showing right margins
		FUNC6(hbox2, FUNC7(FUNC8("Right Margin Test")), 1);
		FUNC6(page3, FUNC7(hbox2), 0);
	}

	// then the stretchy type
	for (hidden = 0; hidden < 4; hidden++) {
		hbox = FUNC0(-1, hidden, 1);
		FUNC6(page3, FUNC7(hbox), 0);
	}

	return page3;
}