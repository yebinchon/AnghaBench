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
typedef  int /*<<< orphan*/  uiTab ;
typedef  int /*<<< orphan*/  uiGroup ;
typedef  int /*<<< orphan*/  uiEntry ;
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/  disableControl ; 
 int /*<<< orphan*/  echoReadOnlyText ; 
 int /*<<< orphan*/  enableControl ; 
 scalar_t__ moveBack ; 
 int /*<<< orphan*/  moveLabel ; 
 char* moveOutText ; 
 int /*<<< orphan*/  movePage1 ; 
 int /*<<< orphan*/ ** movingBoxes ; 
 size_t movingCurrent ; 
 int /*<<< orphan*/ * movingLabel ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  openAnotherDisabledWindow ; 
 int /*<<< orphan*/  openAnotherWindow ; 
 int /*<<< orphan*/ * page2group ; 
 int /*<<< orphan*/  showControl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

uiBox *FUNC18(void)
{
	uiBox *page2;
	uiBox *hbox;
	uiGroup *group;
	uiBox *vbox;
	uiButton *button;
	uiBox *nestedBox;
	uiBox *innerhbox;
	uiBox *innerhbox2;
	uiBox *innerhbox3;
	uiTab *disabledTab;
	uiEntry *entry;
	uiEntry *readonly;
	uiButton *button2;

	page2 = FUNC3();

	group = FUNC0("Moving Label");
	page2group = group;
	FUNC4(page2, FUNC6(group), 0);
	vbox = FUNC3();
	FUNC13(group, FUNC6(vbox));

	hbox = FUNC1();
	button = FUNC14("Move the Label!");
	FUNC5(button, moveLabel, NULL);
	FUNC4(hbox, FUNC6(button), 1);
	// have a blank label for space
	FUNC4(hbox, FUNC6(FUNC16("")), 1);
	FUNC4(vbox, FUNC6(hbox), 0);

	hbox = FUNC1();
	movingBoxes[0] = FUNC3();
	FUNC4(hbox, FUNC6(movingBoxes[0]), 1);
	movingBoxes[1] = FUNC3();
	FUNC4(hbox, FUNC6(movingBoxes[1]), 1);
	FUNC4(vbox, FUNC6(hbox), 0);

	movingCurrent = 0;
	movingLabel = FUNC16("This label moves!");
	FUNC4(movingBoxes[movingCurrent], FUNC6(movingLabel), 0);

	hbox = FUNC1();
	button = FUNC14(moveOutText);
	FUNC5(button, movePage1, NULL);
	FUNC4(hbox, FUNC6(button), 0);
	FUNC4(page2, FUNC6(hbox), 0);
	moveBack = 0;

	hbox = FUNC1();
	FUNC4(hbox, FUNC6(FUNC16("Label Alignment Test")), 0);
	button = FUNC14("Open Menued Window");
	FUNC5(button, openAnotherWindow, button);
	FUNC4(hbox, FUNC6(button), 0);
	button = FUNC14("Open Menuless Window");
	FUNC5(button, openAnotherWindow, NULL);
	FUNC4(hbox, FUNC6(button), 0);
	button = FUNC14("Disabled Menued");
	FUNC5(button, openAnotherDisabledWindow, button);
	FUNC4(hbox, FUNC6(button), 0);
	button = FUNC14("Disabled Menuless");
	FUNC5(button, openAnotherDisabledWindow, NULL);
	FUNC4(hbox, FUNC6(button), 0);
	FUNC4(page2, FUNC6(hbox), 0);

	nestedBox = FUNC1();
	innerhbox = FUNC1();
	FUNC4(innerhbox, FUNC6(FUNC14("These")), 0);
	button = FUNC14("buttons");
	FUNC7(FUNC6(button));
	FUNC4(innerhbox, FUNC6(button), 0);
	FUNC4(nestedBox, FUNC6(innerhbox), 0);
	innerhbox = FUNC1();
	FUNC4(innerhbox, FUNC6(FUNC14("are")), 0);
	innerhbox2 = FUNC1();
	button = FUNC14("in");
	FUNC7(FUNC6(button));
	FUNC4(innerhbox2, FUNC6(button), 0);
	FUNC4(innerhbox, FUNC6(innerhbox2), 0);
	FUNC4(nestedBox, FUNC6(innerhbox), 0);
	innerhbox = FUNC1();
	innerhbox2 = FUNC1();
	FUNC4(innerhbox2, FUNC6(FUNC14("nested")), 0);
	innerhbox3 = FUNC1();
	button = FUNC14("boxes");
	FUNC7(FUNC6(button));
	FUNC4(innerhbox3, FUNC6(button), 0);
	FUNC4(innerhbox2, FUNC6(innerhbox3), 0);
	FUNC4(innerhbox, FUNC6(innerhbox2), 0);
	FUNC4(nestedBox, FUNC6(innerhbox), 0);
	FUNC4(page2, FUNC6(nestedBox), 0);

	hbox = FUNC1();
	button = FUNC14("Enable Nested Box");
	FUNC5(button, enableControl, nestedBox);
	FUNC4(hbox, FUNC6(button), 0);
	button = FUNC14("Disable Nested Box");
	FUNC5(button, disableControl, nestedBox);
	FUNC4(hbox, FUNC6(button), 0);
	FUNC4(page2, FUNC6(hbox), 0);

	disabledTab = FUNC2();
	FUNC17(disabledTab, "Disabled", FUNC6(FUNC14("Button")));
	FUNC17(disabledTab, "Tab", FUNC6(FUNC16("Label")));
	FUNC7(FUNC6(disabledTab));
	FUNC4(page2, FUNC6(disabledTab), 1);

	entry = FUNC15();
	readonly = FUNC15();
	FUNC9(entry, echoReadOnlyText, readonly);
	FUNC12(readonly, "If you can see this, uiEntryReadOnly() isn't working properly.");
	FUNC11(readonly, 1);
	if (FUNC10(readonly))
		FUNC12(readonly, "");
	FUNC4(page2, FUNC6(entry), 0);
	FUNC4(page2, FUNC6(readonly), 0);

	hbox = FUNC1();
	button = FUNC14("Show Button 2");
	button2 = FUNC14("Button 2");
	FUNC5(button, showControl, button2);
	FUNC8(FUNC6(button2));
	FUNC4(hbox, FUNC6(button), 1);
	FUNC4(hbox, FUNC6(button2), 0);
	FUNC4(page2, FUNC6(hbox), 0);

	return page2;
}