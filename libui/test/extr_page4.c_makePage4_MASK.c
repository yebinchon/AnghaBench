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
typedef  int /*<<< orphan*/  uiSpinbox ;
typedef  int /*<<< orphan*/  uiSlider ;
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/  appendCBRB ; 
 int /*<<< orphan*/ * cbox ; 
 int /*<<< orphan*/ * editable ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  onCBChanged ; 
 int /*<<< orphan*/  onECBChanged ; 
 int /*<<< orphan*/  onRBSelected ; 
 int /*<<< orphan*/  onSliderChanged ; 
 int /*<<< orphan*/  onSpinboxChanged ; 
 int /*<<< orphan*/ * pbar ; 
 int /*<<< orphan*/ * rb ; 
 int /*<<< orphan*/  selectNone ; 
 int /*<<< orphan*/  selectSecond ; 
 int /*<<< orphan*/  setSliderTooHigh ; 
 int /*<<< orphan*/  setSliderTooLow ; 
 int /*<<< orphan*/  setSpinboxTooHigh ; 
 int /*<<< orphan*/  setSpinboxTooLow ; 
 int /*<<< orphan*/ * slider ; 
 int /*<<< orphan*/ * spinbox ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (int,int) ; 
 int /*<<< orphan*/ * FUNC18 (int,int) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uiBox *FUNC24(void)
{
	uiBox *page4;
	uiBox *hbox;
	uiSpinbox *xsb;
	uiButton *b;
	uiSlider *xsl;

	page4 = FUNC1();

	spinbox = FUNC18(0, 100);
	FUNC23(spinbox, onSpinboxChanged, NULL);
	FUNC2(page4, FUNC6(spinbox), 0);

	slider = FUNC17(0, 100);
	FUNC22(slider, onSliderChanged, NULL);
	FUNC2(page4, FUNC6(slider), 0);

	pbar = FUNC15();
	FUNC2(page4, FUNC6(pbar), 0);

	FUNC2(page4, FUNC6(FUNC14()), 0);

	hbox = FUNC0();
	xsb = FUNC18(-40, 40);
	FUNC2(hbox, FUNC6(xsb), 0);
	b = FUNC9("Bad Low");
	FUNC3(b, setSpinboxTooLow, xsb);
	FUNC2(hbox, FUNC6(b), 0);
	b = FUNC9("Bad High");
	FUNC3(b, setSpinboxTooHigh, xsb);
	FUNC2(hbox, FUNC6(b), 0);
	FUNC2(page4, FUNC6(hbox), 0);

	hbox = FUNC0();
	xsl = FUNC17(-40, 40);
	FUNC2(hbox, FUNC6(xsl), 0);
	b = FUNC9("Bad Low");
	FUNC3(b, setSliderTooLow, xsl);
	FUNC2(hbox, FUNC6(b), 0);
	b = FUNC9("Bad High");
	FUNC3(b, setSliderTooHigh, xsl);
	FUNC2(hbox, FUNC6(b), 0);
	FUNC2(page4, FUNC6(hbox), 0);

	FUNC2(page4, FUNC6(FUNC14()), 0);

	cbox = FUNC10();
	FUNC4(cbox, "Item 1");
	FUNC4(cbox, "Item 2");
	FUNC4(cbox, "Item 3");
	FUNC5(cbox, onCBChanged, "noneditable");
	FUNC2(page4, FUNC6(cbox), 0);

	editable = FUNC13();
	FUNC7(editable, "Editable Item 1");
	FUNC7(editable, "Editable Item 2");
	FUNC7(editable, "Editable Item 3");
	FUNC8(editable, onECBChanged, "editable");
	FUNC2(page4, FUNC6(editable), 0);

	rb = FUNC16();
	FUNC20(rb, "Item 1");
	FUNC20(rb, "Item 2");
	FUNC20(rb, "Item 3");
	FUNC21(rb, onRBSelected, NULL);
	FUNC2(page4, FUNC6(rb), 0);

	hbox = FUNC0();
	b = FUNC9("Append");
	FUNC3(b, appendCBRB, NULL);
	FUNC2(hbox, FUNC6(b), 0);
	b = FUNC9("Second");
	FUNC3(b, selectSecond, NULL);
	FUNC2(hbox, FUNC6(b), 0);
	b = FUNC9("None");
	FUNC3(b, selectNone, NULL);
	FUNC2(hbox, FUNC6(b), 0);
	FUNC2(page4, FUNC6(hbox), 0);

	FUNC2(page4, FUNC6(FUNC14()), 0);

	FUNC2(page4, FUNC6(FUNC12()), 0);
	FUNC2(page4, FUNC6(FUNC11()), 0);
	FUNC2(page4, FUNC6(FUNC19()), 0);

	return page4;
}