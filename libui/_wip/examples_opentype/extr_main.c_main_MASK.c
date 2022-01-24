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
typedef  int /*<<< orphan*/  uiGrid ;
typedef  int /*<<< orphan*/  uiBox ;
struct TYPE_3__ {int /*<<< orphan*/  KeyEvent; int /*<<< orphan*/  DragBroken; int /*<<< orphan*/  MouseCrossed; int /*<<< orphan*/  MouseEvent; int /*<<< orphan*/  Draw; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * nullFeatures ; 
 int /*<<< orphan*/  onClosing ; 
 int /*<<< orphan*/  onFontChanged ; 
 int /*<<< orphan*/  onNULLToggled ; 
 int /*<<< orphan*/  onTextChanged ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  shouldQuit ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * textEntry ; 
 int /*<<< orphan*/  uiAlignCenter ; 
 int /*<<< orphan*/  uiAlignFill ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC19 (char*) ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/ * FUNC21 () ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int /*<<< orphan*/ * FUNC23 () ; 
 int /*<<< orphan*/ * FUNC24 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 

int FUNC30(void)
{
	uiInitOptions o;
	const char *err;
	uiGrid *grid;
	uiBox *vbox;

	handler.Draw = handlerDraw;
	handler.MouseEvent = handlerMouseEvent;
	handler.MouseCrossed = handlerMouseCrossed;
	handler.DragBroken = handlerDragBroken;
	handler.KeyEvent = handlerKeyEvent;

	FUNC1(&o, 0, sizeof (uiInitOptions));
	err = FUNC16(&o);
	if (err != NULL) {
		FUNC0(stderr, "error initializing ui: %s\n", err);
		FUNC13(err);
		return 1;
	}

	FUNC25(shouldQuit, NULL);

	// TODO 800x600? the size of the GTK+ example?
	mainwin = FUNC24("libui OpenType Features Example", 640, 480, 1);
	FUNC29(mainwin, 1);
	FUNC27(mainwin, onClosing, NULL);

	grid = FUNC22();
	FUNC15(grid, 1);
	FUNC28(mainwin, FUNC6(grid));

	fontButton = FUNC21();
	FUNC11(fontButton, onFontChanged, NULL);
	FUNC14(grid, FUNC6(fontButton),
		0, 0, 1, 1,
		// TODO are these Y values correct?
		0, uiAlignFill, 0, uiAlignCenter);

	textEntry = FUNC20();
	FUNC10(textEntry, "afford afire aflight");
	FUNC9(textEntry, onTextChanged, NULL);
	FUNC14(grid, FUNC6(textEntry),
		1, 0, 1, 1,
		// TODO are these Y values correct too?
		// TODO add a baseline align? or a form align?
		1, uiAlignFill, 0, uiAlignCenter);

	vbox = FUNC23();
	FUNC4(vbox, 1);
	FUNC14(grid, FUNC6(vbox),
		0, 1, 1, 1,
		0, uiAlignFill, 1, uiAlignFill);

	nullFeatures = FUNC19("NULL uiOpenTypeFeatures");
	FUNC5(nullFeatures, onNULLToggled, NULL);
	FUNC3(vbox, FUNC6(nullFeatures), 0);

	// TODO separator (if other stuff isn't a tab)

	// TODO needed for this to be testable on os x without rewriting everything again
	{
		int x;

		for (x = 0; x < 10; x++)
			FUNC3(vbox, FUNC6(FUNC20()), 0);
	}

	// TODO other stuff

	area = FUNC18(&handler);
	FUNC14(grid, FUNC6(area),
		1, 1, 1, 1,
		1, uiAlignFill, 1, uiAlignFill);

	// and set up the initial draw
	FUNC2();

	FUNC8(FUNC6(mainwin));
	FUNC17();

	FUNC7(FUNC6(mainwin));
	FUNC12(attrstr);
	FUNC26();
	return 0;
}