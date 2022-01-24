#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;
typedef  int /*<<< orphan*/  uiAreaHandler ;
struct TYPE_3__ {int /*<<< orphan*/  KeyEvent; int /*<<< orphan*/  DragBroken; int /*<<< orphan*/  MouseCrossed; int /*<<< orphan*/  MouseEvent; int /*<<< orphan*/  Draw; } ;
struct TYPE_4__ {TYPE_1__ ah; } ;

/* Variables and functions */
 int /*<<< orphan*/ * area ; 
 int /*<<< orphan*/  enableArea ; 
 TYPE_2__ handler ; 
 int /*<<< orphan*/  handlerDragBroken ; 
 int /*<<< orphan*/  handlerDraw ; 
 int /*<<< orphan*/  handlerKeyEvent ; 
 int /*<<< orphan*/  handlerMouseCrossed ; 
 int /*<<< orphan*/  handlerMouseEvent ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  redraw ; 
 int /*<<< orphan*/  shouldntHappen ; 
 int /*<<< orphan*/ * swallowKeys ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * which ; 

uiBox *FUNC12(void)
{
	uiBox *page6;
	uiBox *hbox;
	uiButton *button;

	handler.ah.Draw = handlerDraw;
	handler.ah.MouseEvent = handlerMouseEvent;
	handler.ah.MouseCrossed = handlerMouseCrossed;
	handler.ah.DragBroken = handlerDragBroken;
	handler.ah.KeyEvent = handlerKeyEvent;

	page6 = FUNC1();

	hbox = FUNC0();
	FUNC3(page6, FUNC7(hbox), 0);

	which = FUNC11();
	FUNC2(which);
	// this is to make sure that uiComboboxOnSelected() doesn't trigger with uiComboboxSetSelected()
	FUNC5(which, shouldntHappen, NULL);
	FUNC6(which, 0);
	FUNC5(which, redraw, NULL);
	FUNC3(hbox, FUNC7(which), 0);

	area = FUNC8((uiAreaHandler *) (&handler));
	FUNC3(page6, FUNC7(area), 1);

	hbox = FUNC0();
	FUNC3(page6, FUNC7(hbox), 0);

	swallowKeys = FUNC10("Consider key events handled");
	FUNC3(hbox, FUNC7(swallowKeys), 1);

	button = FUNC9("Enable");
	FUNC4(button, enableArea, button);
	FUNC3(hbox, FUNC7(button), 0);

	button = FUNC9("Disable");
	FUNC4(button, enableArea, NULL);
	FUNC3(hbox, FUNC7(button), 0);

	return page6;
}