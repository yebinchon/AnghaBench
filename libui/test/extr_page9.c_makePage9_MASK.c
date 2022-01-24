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
 int /*<<< orphan*/ * addLeading ; 
 int /*<<< orphan*/  handlerDragBroken ; 
 int /*<<< orphan*/  handlerDraw ; 
 int /*<<< orphan*/  handlerKeyEvent ; 
 int /*<<< orphan*/  handlerMouseCrossed ; 
 int /*<<< orphan*/  handlerMouseEvent ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  onTextApply ; 
 int /*<<< orphan*/ * textApply ; 
 int /*<<< orphan*/ * textArea ; 
 TYPE_1__ textAreaHandler ; 
 int /*<<< orphan*/ * textFont ; 
 int /*<<< orphan*/ * textItalic ; 
 int /*<<< orphan*/ * textSize ; 
 int /*<<< orphan*/ * textSmallCaps ; 
 int /*<<< orphan*/ * textStretch ; 
 int /*<<< orphan*/ * textString ; 
 int /*<<< orphan*/ * textWeight ; 
 int /*<<< orphan*/ * textWidth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawTextItalicNormal ; 
 int /*<<< orphan*/  uiDrawTextStretchNormal ; 
 int /*<<< orphan*/  uiDrawTextWeightNormal ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 

uiBox *FUNC14(void)
{
	uiBox *page9;
	uiBox *vbox;
	uiBox *hbox;

	page9 = FUNC1();
	vbox = page9;

	hbox = FUNC0();
	FUNC2(vbox, FUNC7(hbox), 0);

	textString = FUNC13();
	// TODO make it placeholder
	FUNC8(textString, "Enter text here");
	FUNC2(hbox, FUNC7(textString), 1);

	textFont = FUNC13();
	FUNC8(textFont, "Arial");
	FUNC2(hbox, FUNC7(textFont), 1);

	textSize = FUNC13();
	FUNC8(textSize, "10");
	FUNC2(hbox, FUNC7(textSize), 1);

	hbox = FUNC0();
	FUNC2(vbox, FUNC7(hbox), 0);

	textWeight = FUNC12();
	FUNC5(textWeight, "Thin");
	FUNC5(textWeight, "Ultra Light");
	FUNC5(textWeight, "Light");
	FUNC5(textWeight, "Book");
	FUNC5(textWeight, "Normal");
	FUNC5(textWeight, "Medium");
	FUNC5(textWeight, "Semi Bold");
	FUNC5(textWeight, "Bold");
	FUNC5(textWeight, "Ultra Bold");
	FUNC5(textWeight, "Heavy");
	FUNC5(textWeight, "Ultra Heavy");
	FUNC6(textWeight, uiDrawTextWeightNormal);
	FUNC2(hbox, FUNC7(textWeight), 1);

	textItalic = FUNC12();
	FUNC5(textItalic, "Normal");
	FUNC5(textItalic, "Oblique");
	FUNC5(textItalic, "Italic");
	FUNC6(textItalic, uiDrawTextItalicNormal);
	FUNC2(hbox, FUNC7(textItalic), 1);

	textSmallCaps = FUNC11("Small Caps");
	FUNC2(hbox, FUNC7(textSmallCaps), 1);

	hbox = FUNC0();
	FUNC2(vbox, FUNC7(hbox), 0);

	textStretch = FUNC12();
	FUNC5(textStretch, "Ultra Condensed");
	FUNC5(textStretch, "Extra Condensed");
	FUNC5(textStretch, "Condensed");
	FUNC5(textStretch, "Semi Condensed");
	FUNC5(textStretch, "Normal");
	FUNC5(textStretch, "Semi Expanded");
	FUNC5(textStretch, "Expanded");
	FUNC5(textStretch, "Extra Expanded");
	FUNC5(textStretch, "Ultra Expanded");
	FUNC6(textStretch, uiDrawTextStretchNormal);
	FUNC2(hbox, FUNC7(textStretch), 1);

	textWidth = FUNC13();
	FUNC8(textWidth, "-1");
	FUNC2(hbox, FUNC7(textWidth), 1);

	hbox = FUNC0();
	FUNC2(vbox, FUNC7(hbox), 0);

	textApply = FUNC10("Apply");
	FUNC3(textApply, onTextApply, NULL);
	FUNC2(hbox, FUNC7(textApply), 1);

	addLeading = FUNC11("Add Leading");
	FUNC4(addLeading, 1);
	FUNC2(hbox, FUNC7(addLeading), 0);

	textAreaHandler.Draw = handlerDraw;
	textAreaHandler.MouseEvent = handlerMouseEvent;
	textAreaHandler.MouseCrossed = handlerMouseCrossed;
	textAreaHandler.DragBroken = handlerDragBroken;
	textAreaHandler.KeyEvent = handlerKeyEvent;
	textArea = FUNC9(&textAreaHandler);
	FUNC2(vbox, FUNC7(textArea), 1);

	return page9;
}