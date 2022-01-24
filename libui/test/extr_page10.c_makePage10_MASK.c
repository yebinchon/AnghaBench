#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiBox ;
struct TYPE_3__ {int /*<<< orphan*/  KeyEvent; int /*<<< orphan*/  DragBroken; int /*<<< orphan*/  MouseCrossed; int /*<<< orphan*/  MouseEvent; int /*<<< orphan*/  Draw; } ;

/* Variables and functions */
 int /*<<< orphan*/  handlerDragBroken ; 
 int /*<<< orphan*/  handlerDraw ; 
 int /*<<< orphan*/  handlerKeyEvent ; 
 int /*<<< orphan*/  handlerMouseCrossed ; 
 int /*<<< orphan*/  handlerMouseEvent ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * noZ ; 
 int /*<<< orphan*/  onColorChanged ; 
 int /*<<< orphan*/  onFontChanged ; 
 int /*<<< orphan*/  onNoZ ; 
 int /*<<< orphan*/ * textApply ; 
 int /*<<< orphan*/ * textArea ; 
 TYPE_1__ textAreaHandler ; 
 int /*<<< orphan*/ * textColorButton ; 
 int /*<<< orphan*/ * textFontButton ; 
 int /*<<< orphan*/ * textString ; 
 int /*<<< orphan*/ * textWidth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 

uiBox *FUNC14(void)
{
	uiBox *page10;
	uiBox *vbox;
	uiBox *hbox;

	page10 = FUNC1();
	vbox = page10;

	hbox = FUNC0();
	FUNC2(vbox, FUNC5(hbox), 0);

	textString = FUNC12();
	// TODO make it placeholder
	FUNC6(textString, "Enter text here");
	FUNC2(hbox, FUNC5(textString), 1);

	textFontButton = FUNC13();
	FUNC7(textFontButton, onFontChanged, NULL);
	FUNC2(hbox, FUNC5(textFontButton), 1);

	textColorButton = FUNC11();
	FUNC4(textColorButton, onColorChanged, NULL);
	FUNC2(hbox, FUNC5(textColorButton), 1);

	hbox = FUNC0();
	FUNC2(vbox, FUNC5(hbox), 0);

	textApply = FUNC9("Apply");
	FUNC2(hbox, FUNC5(textApply), 1);

	textWidth = FUNC12();
	FUNC6(textWidth, "-1");
	FUNC2(hbox, FUNC5(textWidth), 1);

	noZ = FUNC10("No Z Color");
	FUNC3(noZ, onNoZ, NULL);
	FUNC2(hbox, FUNC5(noZ), 0);

	textAreaHandler.Draw = handlerDraw;
	textAreaHandler.MouseEvent = handlerMouseEvent;
	textAreaHandler.MouseCrossed = handlerMouseCrossed;
	textAreaHandler.DragBroken = handlerDragBroken;
	textAreaHandler.KeyEvent = handlerKeyEvent;
	textArea = FUNC8(&textAreaHandler);
	FUNC2(vbox, FUNC5(textArea), 1);

	// dummy objects to test single-activation
	hbox = FUNC0();
	FUNC2(vbox, FUNC5(hbox), 0);
	FUNC2(hbox, FUNC5(FUNC13()), 1);
	FUNC2(hbox, FUNC5(FUNC11()), 1);

	return page10;
}