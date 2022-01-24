#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiInitOptions ;
struct TYPE_5__ {int /*<<< orphan*/  A; int /*<<< orphan*/  B; int /*<<< orphan*/  G; int /*<<< orphan*/  R; } ;
typedef  TYPE_1__ uiDrawBrush ;
typedef  int /*<<< orphan*/  uiBox ;
struct TYPE_6__ {int /*<<< orphan*/  KeyEvent; int /*<<< orphan*/  DragBroken; int /*<<< orphan*/  MouseCrossed; int /*<<< orphan*/  MouseEvent; int /*<<< orphan*/  Draw; } ;

/* Variables and functions */
 int /*<<< orphan*/ * colorButton ; 
 int /*<<< orphan*/  colorDodgerBlue ; 
 int /*<<< orphan*/ ** datapoints ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_2__ handler ; 
 int /*<<< orphan*/  handlerDragBroken ; 
 int /*<<< orphan*/  handlerDraw ; 
 int /*<<< orphan*/  handlerKeyEvent ; 
 int /*<<< orphan*/  handlerMouseCrossed ; 
 int /*<<< orphan*/  handlerMouseEvent ; 
 int /*<<< orphan*/ * histogram ; 
 int /*<<< orphan*/ * mainwin ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  onClosing ; 
 int /*<<< orphan*/  onColorChanged ; 
 int /*<<< orphan*/  onDatapointChanged ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  shouldQuit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/ * FUNC20 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 

int FUNC28(void)
{
	uiInitOptions o;
	const char *err;
	uiBox *hbox, *vbox;
	int i;
	uiDrawBrush brush;

	handler.Draw = handlerDraw;
	handler.MouseEvent = handlerMouseEvent;
	handler.MouseCrossed = handlerMouseCrossed;
	handler.DragBroken = handlerDragBroken;
	handler.KeyEvent = handlerKeyEvent;

	FUNC1(&o, 0, sizeof (uiInitOptions));
	err = FUNC13(&o);
	if (err != NULL) {
		FUNC0(stderr, "error initializing ui: %s\n", err);
		FUNC12(err);
		return 1;
	}

	FUNC21(shouldQuit, NULL);

	mainwin = FUNC20("libui Histogram Example", 640, 480, 1);
	FUNC27(mainwin, 1);
	FUNC25(mainwin, onClosing, NULL);

	hbox = FUNC17();
	FUNC7(hbox, 1);
	FUNC26(mainwin, FUNC10(hbox));

	vbox = FUNC19();
	FUNC7(vbox, 1);
	FUNC6(hbox, FUNC10(vbox), 0);

	FUNC4(FUNC5(NULL));
	for (i = 0; i < 10; i++) {
		datapoints[i] = FUNC18(0, 100);
		FUNC23(datapoints[i], FUNC2() % 101);
		FUNC22(datapoints[i], onDatapointChanged, NULL);
		FUNC6(vbox, FUNC10(datapoints[i]), 0);
	}

	colorButton = FUNC16();
	// TODO inline these
	FUNC3(&brush, colorDodgerBlue, 1.0);
	FUNC9(colorButton,
		brush.R,
		brush.G,
		brush.B,
		brush.A);
	FUNC8(colorButton, onColorChanged, NULL);
	FUNC6(vbox, FUNC10(colorButton), 0);

	histogram = FUNC15(&handler);
	FUNC6(hbox, FUNC10(histogram), 1);

	FUNC11(FUNC10(mainwin));
	FUNC14();
	FUNC24();
	return 0;
}