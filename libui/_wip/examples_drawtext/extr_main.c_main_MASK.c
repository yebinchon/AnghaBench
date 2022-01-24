#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiInitOptions ;
struct TYPE_9__ {int /*<<< orphan*/  panel; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  KeyEvent; int /*<<< orphan*/  DragBroken; int /*<<< orphan*/  MouseCrossed; int /*<<< orphan*/  MouseEvent; int /*<<< orphan*/  Draw; } ;

/* Variables and functions */
 int /*<<< orphan*/  area ; 
 int /*<<< orphan*/  box ; 
 int /*<<< orphan*/  exampleList ; 
 TYPE_2__** examples ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__ handler ; 
 int /*<<< orphan*/  handlerDragBroken ; 
 int /*<<< orphan*/  handlerDraw ; 
 int /*<<< orphan*/  handlerKeyEvent ; 
 int /*<<< orphan*/  handlerMouseCrossed ; 
 int /*<<< orphan*/  handlerMouseEvent ; 
 int /*<<< orphan*/  mainwin ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 () ; 
 TYPE_2__* FUNC3 () ; 
 TYPE_2__* FUNC4 () ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  onClosing ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shouldQuit ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC25(void)
{
	uiInitOptions o;
	const char *err;
	int n;

	handler.Draw = handlerDraw;
	handler.MouseEvent = handlerMouseEvent;
	handler.MouseCrossed = handlerMouseCrossed;
	handler.DragBroken = handlerDragBroken;
	handler.KeyEvent = handlerKeyEvent;

	FUNC1(&o, 0, sizeof (uiInitOptions));
	err = FUNC15(&o);
	if (err != NULL) {
		FUNC0(stderr, "error initializing ui: %s\n", err);
		FUNC14(err);
		return 1;
	}

	FUNC21(shouldQuit, NULL);

	mainwin = FUNC20("libui Text-Drawing Example", 640, 480, 1);
	FUNC23(mainwin, onClosing, NULL);

	box = FUNC19();
	FUNC24(mainwin, FUNC11(box));

	exampleList = FUNC18();
	FUNC7(box, FUNC11(exampleList), 0);

	area = FUNC17(&handler);
	FUNC7(box, FUNC11(area), 1);

	n = 0;
	examples[n] = FUNC3();
	FUNC8(exampleList, examples[n]->name);
	FUNC12(examples[n]->panel);
	FUNC7(box, examples[n]->panel, 0);
	n++;
	examples[n] = FUNC5();
	FUNC8(exampleList, examples[n]->name);
	FUNC12(examples[n]->panel);
	FUNC7(box, examples[n]->panel, 0);
	n++;
	examples[n] = FUNC2();
	FUNC8(exampleList, examples[n]->name);
	FUNC12(examples[n]->panel);
	FUNC7(box, examples[n]->panel, 0);
	n++;
	examples[n] = FUNC4();
	FUNC8(exampleList, examples[n]->name);
	FUNC12(examples[n]->panel);
	FUNC7(box, examples[n]->panel, 0);
	n++;
	// and set things up for the initial state
	FUNC10(exampleList, 0);
	FUNC9(exampleList, onExampleChanged, NULL);
	// and set up the first one
	FUNC6(NULL, NULL);

	FUNC13(FUNC11(mainwin));
	FUNC16();

	// TODO free examples

	FUNC22();
	return 0;
}