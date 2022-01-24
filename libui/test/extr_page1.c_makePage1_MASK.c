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
typedef  int /*<<< orphan*/  uiLabel ;
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/  disableControl ; 
 int /*<<< orphan*/  enableControl ; 
 int /*<<< orphan*/ * entry ; 
 int /*<<< orphan*/  forceSpaced ; 
 int /*<<< orphan*/  getButtonText ; 
 int /*<<< orphan*/  getCheckboxText ; 
 int /*<<< orphan*/  getGroupText ; 
 int /*<<< orphan*/  getLabelText ; 
 int /*<<< orphan*/  getWindowText ; 
 int /*<<< orphan*/  hideControl ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  onChanged ; 
 int /*<<< orphan*/ * page1 ; 
 int /*<<< orphan*/ * page2group ; 
 int /*<<< orphan*/  setButtonText ; 
 int /*<<< orphan*/  setCheckboxText ; 
 int /*<<< orphan*/  setGroupText ; 
 int /*<<< orphan*/  setLabelText ; 
 int /*<<< orphan*/  setWindowText ; 
 int /*<<< orphan*/  showControl ; 
 int /*<<< orphan*/  showSpaced ; 
 int /*<<< orphan*/ * spaced ; 
 int /*<<< orphan*/  toggleSpaced ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 

void FUNC11(uiWindow *w)
{
	uiButton *getButton, *setButton;
	uiBox *hbox;
	uiBox *testBox;
	uiLabel *label;

	page1 = FUNC1();

	entry = FUNC9();
	FUNC6(entry, onChanged, NULL);
	FUNC2(page1, FUNC5(entry), 0);

	spaced = FUNC8("Spaced");
	FUNC4(spaced, toggleSpaced, NULL);
	label = FUNC10("Label");

	hbox = FUNC0();
	getButton = FUNC7("Get Window Text");
	FUNC3(getButton, getWindowText, w);
	setButton = FUNC7("Set Window Text");
	FUNC3(setButton, setWindowText, w);
	FUNC2(hbox, FUNC5(getButton), 1);
	FUNC2(hbox, FUNC5(setButton), 1);
	FUNC2(page1, FUNC5(hbox), 0);

	hbox = FUNC0();
	getButton = FUNC7("Get Button Text");
	FUNC3(getButton, getButtonText, getButton);
	setButton = FUNC7("Set Button Text");
	FUNC3(setButton, setButtonText, getButton);
	FUNC2(hbox, FUNC5(getButton), 1);
	FUNC2(hbox, FUNC5(setButton), 1);
	FUNC2(page1, FUNC5(hbox), 0);

	hbox = FUNC0();
	getButton = FUNC7("Get Checkbox Text");
	FUNC3(getButton, getCheckboxText, spaced);
	setButton = FUNC7("Set Checkbox Text");
	FUNC3(setButton, setCheckboxText, spaced);
	FUNC2(hbox, FUNC5(getButton), 1);
	FUNC2(hbox, FUNC5(setButton), 1);
	FUNC2(page1, FUNC5(hbox), 0);

	hbox = FUNC0();
	getButton = FUNC7("Get Label Text");
	FUNC3(getButton, getLabelText, label);
	setButton = FUNC7("Set Label Text");
	FUNC3(setButton, setLabelText, label);
	FUNC2(hbox, FUNC5(getButton), 1);
	FUNC2(hbox, FUNC5(setButton), 1);
	FUNC2(page1, FUNC5(hbox), 0);

	hbox = FUNC0();
	getButton = FUNC7("Get Group Text");
	FUNC3(getButton, getGroupText, page2group);
	setButton = FUNC7("Set Group Text");
	FUNC3(setButton, setGroupText, page2group);
	FUNC2(hbox, FUNC5(getButton), 1);
	FUNC2(hbox, FUNC5(setButton), 1);
	FUNC2(page1, FUNC5(hbox), 0);

	hbox = FUNC0();
	FUNC2(hbox, FUNC5(spaced), 1);
	getButton = FUNC7("On");
	FUNC3(getButton, forceSpaced, getButton);
	FUNC2(hbox, FUNC5(getButton), 0);
	getButton = FUNC7("Off");
	FUNC3(getButton, forceSpaced, NULL);
	FUNC2(hbox, FUNC5(getButton), 0);
	getButton = FUNC7("Show");
	FUNC3(getButton, showSpaced, NULL);
	FUNC2(hbox, FUNC5(getButton), 0);
	FUNC2(page1, FUNC5(hbox), 0);

	testBox = FUNC0();
	setButton = FUNC7("Button");
	FUNC2(testBox, FUNC5(setButton), 1);
	getButton = FUNC7("Show");
	FUNC3(getButton, showControl, setButton);
	FUNC2(testBox, FUNC5(getButton), 0);
	getButton = FUNC7("Hide");
	FUNC3(getButton, hideControl, setButton);
	FUNC2(testBox, FUNC5(getButton), 0);
	getButton = FUNC7("Enable");
	FUNC3(getButton, enableControl, setButton);
	FUNC2(testBox, FUNC5(getButton), 0);
	getButton = FUNC7("Disable");
	FUNC3(getButton, disableControl, setButton);
	FUNC2(testBox, FUNC5(getButton), 0);
	FUNC2(page1, FUNC5(testBox), 0);

	hbox = FUNC0();
	getButton = FUNC7("Show Box");
	FUNC3(getButton, showControl, testBox);
	FUNC2(hbox, FUNC5(getButton), 1);
	getButton = FUNC7("Hide Box");
	FUNC3(getButton, hideControl, testBox);
	FUNC2(hbox, FUNC5(getButton), 1);
	getButton = FUNC7("Enable Box");
	FUNC3(getButton, enableControl, testBox);
	FUNC2(hbox, FUNC5(getButton), 1);
	getButton = FUNC7("Disable Box");
	FUNC3(getButton, disableControl, testBox);
	FUNC2(hbox, FUNC5(getButton), 1);
	FUNC2(page1, FUNC5(hbox), 0);

	FUNC2(page1, FUNC5(label), 0);
}