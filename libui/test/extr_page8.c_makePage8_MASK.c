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
typedef  int /*<<< orphan*/  uiMultilineEntry ;
typedef  int /*<<< orphan*/  uiGroup ;
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  onListFonts ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

uiBox *FUNC9(void)
{
	uiBox *page8;
	uiGroup *group;
	uiBox *vbox;
	uiMultilineEntry *me;
	uiButton *button;

	page8 = FUNC1();

	group = FUNC0("Font Families");
	FUNC3(page8, FUNC5(group), 1);

	vbox = FUNC2();
	FUNC6(group, FUNC5(vbox));

	me = FUNC8();
	FUNC3(vbox, FUNC5(me), 1);

	button = FUNC7("List Font Families");
	FUNC4(button, onListFonts, me);
	FUNC3(vbox, FUNC5(button), 0);

	return page8;
}