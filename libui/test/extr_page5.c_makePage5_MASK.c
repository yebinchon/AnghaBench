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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * description ; 
 int /*<<< orphan*/  msgBox ; 
 int /*<<< orphan*/  msgBoxError ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  openFile ; 
 int /*<<< orphan*/ * parent ; 
 int /*<<< orphan*/  saveFile ; 
 int /*<<< orphan*/ * title ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

uiBox *FUNC9(uiWindow *pw)
{
	uiBox *page5;
	uiBox *hbox;
	uiButton *button;
	uiLabel *label;

	parent = pw;

	page5 = FUNC2();

#define D(n, f) \
	hbox = newHorizontalBox(); \
	button = uiNewButton(n); \
	label = uiNewLabel(""); \
	uiButtonOnClicked(button, f, label); \
	uiBoxAppend(hbox, uiControl(button), 0); \
	uiBoxAppend(hbox, uiControl(label), 0); \
	uiBoxAppend(page5, uiControl(hbox), 0);

	D("Open File", openFile);
	D("Save File", saveFile);

	title = FUNC8();
	FUNC6(title, "Title");
	description = FUNC8();
	FUNC6(description, "Description");

	hbox = FUNC1();
	button = FUNC7("Message Box");
	FUNC4(button, msgBox, NULL);
	FUNC3(hbox, FUNC5(button), 0);
	FUNC3(hbox, FUNC5(title), 0);
	FUNC3(page5, FUNC5(hbox), 0);

	hbox = FUNC1();
	button = FUNC7("Error Box");
	FUNC4(button, msgBoxError, NULL);
	FUNC3(hbox, FUNC5(button), 0);
	FUNC3(hbox, FUNC5(description), 0);
	FUNC3(page5, FUNC5(hbox), 0);

	return page5;
}