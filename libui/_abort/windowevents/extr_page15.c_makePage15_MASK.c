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
typedef  int /*<<< orphan*/  uiWindow ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  button ; 
 int /*<<< orphan*/  center ; 
 int /*<<< orphan*/  hbox ; 
 int /*<<< orphan*/  moveX ; 
 int /*<<< orphan*/  moveY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  onMove ; 
 int /*<<< orphan*/  page15 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x ; 
 int /*<<< orphan*/  y ; 

uiBox *FUNC10(uiWindow *w)
{
	hbox = FUNC0();
	// TODO if I make this 1 and not add anything else AND not call uiWindowOnPositionChanged(), on OS X the box won't be able to grow vertically
	FUNC1(page15, FUNC3(hbox), 0);

	FUNC1(hbox, FUNC3(FUNC5("Position")), 0);
	x = FUNC6(INT_MIN, INT_MAX);
	FUNC1(hbox, FUNC3(x), 1);
	y = FUNC6(INT_MIN, INT_MAX);
	FUNC1(hbox, FUNC3(y), 1);
	button = FUNC4("Center");
	FUNC1(hbox, FUNC3(button), 0);

	FUNC7(x, moveX, w);
	FUNC7(y, moveY, w);
	FUNC2(button, center, w);
	FUNC8(w, onMove, NULL);
	FUNC9(w);
}