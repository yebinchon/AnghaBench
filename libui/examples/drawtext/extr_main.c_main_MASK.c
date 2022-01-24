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
typedef  int /*<<< orphan*/  uiInitOptions ;
typedef  int /*<<< orphan*/  uiForm ;
typedef  int /*<<< orphan*/  uiBox ;
struct TYPE_3__ {int /*<<< orphan*/  KeyEvent; int /*<<< orphan*/  DragBroken; int /*<<< orphan*/  MouseCrossed; int /*<<< orphan*/  MouseEvent; int /*<<< orphan*/  Draw; } ;

/* Variables and functions */
 int /*<<< orphan*/ * alignment ; 
 int /*<<< orphan*/ * area ; 
 int /*<<< orphan*/  attrstr ; 
 int /*<<< orphan*/ * fontButton ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__ handler ; 
 int /*<<< orphan*/  handlerDragBroken ; 
 int /*<<< orphan*/  handlerDraw ; 
 int /*<<< orphan*/  handlerKeyEvent ; 
 int /*<<< orphan*/  handlerMouseCrossed ; 
 int /*<<< orphan*/  handlerMouseEvent ; 
 int /*<<< orphan*/ * mainwin ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  onClosing ; 
 int /*<<< orphan*/  onComboboxSelected ; 
 int /*<<< orphan*/  onFontChanged ; 
 int /*<<< orphan*/  shouldQuit ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/ * FUNC21 () ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int /*<<< orphan*/ * FUNC23 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 

int FUNC29(void)
{
	uiInitOptions o;
	const char *err;
	uiBox *hbox, *vbox;
	uiForm *form;

	handler.Draw = handlerDraw;
	handler.MouseEvent = handlerMouseEvent;
	handler.MouseCrossed = handlerMouseCrossed;
	handler.DragBroken = handlerDragBroken;
	handler.KeyEvent = handlerKeyEvent;

	FUNC2(&o, 0, sizeof (uiInitOptions));
	err = FUNC15(&o);
	if (err != NULL) {
		FUNC0(stderr, "error initializing ui: %s\n", err);
		FUNC14(err);
		return 1;
	}

	FUNC24(shouldQuit, NULL);

	FUNC1();

	mainwin = FUNC23("libui Text-Drawing Example", 640, 480, 1);
	FUNC28(mainwin, 1);
	FUNC26(mainwin, onClosing, NULL);

	hbox = FUNC21();
	FUNC4(hbox, 1);
	FUNC27(mainwin, FUNC8(hbox));

	vbox = FUNC22();
	FUNC4(vbox, 1);
	FUNC3(hbox, FUNC8(vbox), 0);

	fontButton = FUNC19();
	FUNC10(fontButton, onFontChanged, NULL);
	FUNC3(vbox, FUNC8(fontButton), 0);

	form = FUNC20();
	FUNC12(form, 1);
	// TODO on OS X if this is set to 1 then the window can't resize; does the form not have the concept of stretchy trailing space?
	FUNC3(vbox, FUNC8(form), 0);

	alignment = FUNC18();
	// note that the items match with the values of the uiDrawTextAlign values
	FUNC5(alignment, "Left");
	FUNC5(alignment, "Center");
	FUNC5(alignment, "Right");
	FUNC7(alignment, 0);		// start with left alignment
	FUNC6(alignment, onComboboxSelected, NULL);
	FUNC11(form, "Alignment", FUNC8(alignment), 0);

	area = FUNC17(&handler);
	FUNC3(hbox, FUNC8(area), 1);

	FUNC9(FUNC8(mainwin));
	FUNC16();
	FUNC13(attrstr);
	FUNC25();
	return 0;
}