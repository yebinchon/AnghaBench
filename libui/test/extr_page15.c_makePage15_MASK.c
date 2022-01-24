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
typedef  int /*<<< orphan*/  uiCheckbox ;
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  borderWindowOpen ; 
 int /*<<< orphan*/  borderless ; 
 int /*<<< orphan*/ * fullscreen ; 
 int /*<<< orphan*/ * height ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  onSize ; 
 int /*<<< orphan*/  setFullscreen ; 
 int /*<<< orphan*/  sizeHeight ; 
 int /*<<< orphan*/  sizeWidth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * width ; 

uiBox *FUNC14(uiWindow *w)
{
	uiBox *page15;
	uiBox *hbox;
	uiButton *button;
	uiCheckbox *checkbox;

	page15 = FUNC1();

	hbox = FUNC0();
	FUNC2(page15, FUNC5(hbox), 0);

	FUNC2(hbox, FUNC5(FUNC8("Size")), 0);
	width = FUNC9(INT_MIN, INT_MAX);
	FUNC2(hbox, FUNC5(width), 1);
	height = FUNC9(INT_MIN, INT_MAX);
	FUNC2(hbox, FUNC5(height), 1);
	fullscreen = FUNC7("Fullscreen");
	FUNC2(hbox, FUNC5(fullscreen), 0);

	FUNC11(width, sizeWidth, w);
	FUNC11(height, sizeHeight, w);
	FUNC4(fullscreen, setFullscreen, w);
	FUNC12(w, onSize, NULL);
	FUNC13(w);

	checkbox = FUNC7("Borderless");
	FUNC4(checkbox, borderless, w);
	FUNC2(page15, FUNC5(checkbox), 0);

	button = FUNC6("Borderless Resizes");
	FUNC3(button, borderWindowOpen, NULL);
	FUNC2(page15, FUNC5(button), 0);

	hbox = FUNC0();
	FUNC2(page15, FUNC5(hbox), 1);

	FUNC2(hbox, FUNC5(FUNC10()), 0);

	return page15;
}