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
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 

__attribute__((used)) static uiBox *FUNC7(int omit, int hidden, int stretch)
{
	uiBox *hbox;
	uiButton *buttons[4];

	// don't use newHorizontalBox()
	// the point of this test is to test hidden controls and padded
	hbox = FUNC0)();
	FUNC3(hbox, 1);
	if (omit != 0) {
		buttons[0] = FUNC6("First");
		FUNC2(hbox, FUNC4(buttons[0]), stretch);
	}
	if (omit != 1) {
		buttons[1] = FUNC6("Second");
		FUNC2(hbox, FUNC4(buttons[1]), stretch);
	}
	if (omit != 2) {
		buttons[2] = FUNC6("Third");
		FUNC2(hbox, FUNC4(buttons[2]), stretch);
	}
	if (omit != 3) {
		buttons[3] = FUNC6("Fourth");
		FUNC2(hbox, FUNC4(buttons[3]), stretch);
	}
	if (hidden != -1)
		FUNC5(FUNC4(buttons[hidden]));
	return hbox;
}