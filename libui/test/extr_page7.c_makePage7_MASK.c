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
typedef  int /*<<< orphan*/  uiGroup ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

uiBox *FUNC7(void)
{
	uiBox *page7;
	uiGroup *group;
	uiBox *box2;

	page7 = FUNC3();

	group = FUNC0();
	FUNC5(page7, FUNC6(group), 1);

	box2 = FUNC4();
	FUNC5(page7, FUNC6(box2), 1);

	group = FUNC1();
	FUNC5(box2, FUNC6(group), 1);

	group = FUNC2();
	FUNC5(box2, FUNC6(group), 1);

	return page7;
}