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
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiNewMultilineEntry ; 
 int /*<<< orphan*/  uiNewNonWrappingMultilineEntry ; 

uiBox *FUNC4(void)
{
	uiBox *page12;
	uiBox *b;

	page12 = FUNC1();

	b = FUNC0(uiNewMultilineEntry, "wrap");
	FUNC2(page12, FUNC3(b), 1);
	b = FUNC0(uiNewNonWrappingMultilineEntry, "no wrap");
	FUNC2(page12, FUNC3(b), 1);

	return page12;
}