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
typedef  int /*<<< orphan*/  uiRadioButtons ;
typedef  int /*<<< orphan*/  uiProgressBar ;
typedef  int /*<<< orphan*/  uiForm ;
typedef  int /*<<< orphan*/  uiEntry ;
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/  buttonClicked ; 
 int /*<<< orphan*/  deleteFirst ; 
 int /*<<< orphan*/  entryChanged ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  setIndeterminate ; 
 int /*<<< orphan*/  showHide ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/ * uiNewHorizontalBox ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * uiNewVerticalBox ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 

uiBox *FUNC15(void)
{
	uiBox *page13;
	uiRadioButtons *rb;
	uiButton *b;
	uiForm *f;
	uiEntry *e;
	uiProgressBar *p;

	page13 = FUNC1();

	rb = FUNC11();
	FUNC14(rb, "Item 1");
	FUNC14(rb, "Item 2");
	FUNC14(rb, "Item 3");
	FUNC2(page13, FUNC4(rb), 0);

	rb = FUNC11();
	FUNC14(rb, "Item A");
	FUNC14(rb, "Item B");
	FUNC2(page13, FUNC4(rb), 0);

	b = FUNC7("Horizontal");
	FUNC3(b, buttonClicked, uiNewHorizontalBox);
	FUNC2(page13, FUNC4(b), 0);

	b = FUNC7("Vertical");
	FUNC3(b, buttonClicked, uiNewVerticalBox);
	FUNC2(page13, FUNC4(b), 0);

	f = FUNC0();

	e = FUNC9();
	FUNC5(e, entryChanged, "password");
	FUNC6(f, "Password Entry", FUNC4(e), 0);

	e = FUNC12();
	FUNC5(e, entryChanged, "search");
	FUNC6(f, "Search Box", FUNC4(e), 0);

	FUNC6(f, "MLE", FUNC4(FUNC8()), 1);

	p = FUNC10();
	FUNC13(p, 50);
	FUNC2(page13, FUNC4(p), 0);
	b = FUNC7("Toggle Indeterminate");
	FUNC3(b, setIndeterminate, p);
	FUNC2(page13, FUNC4(b), 0);

	b = FUNC7("Show/Hide");
	FUNC3(b, showHide, e);
	FUNC2(page13, FUNC4(b), 0);
	b = FUNC7("Delete First");
	FUNC3(b, deleteFirst, f);
	FUNC2(page13, FUNC4(b), 0);
	FUNC2(page13, FUNC4(f), 1);

	return page13;
}