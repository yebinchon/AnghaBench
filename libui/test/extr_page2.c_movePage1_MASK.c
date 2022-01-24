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
typedef  int /*<<< orphan*/  uiButton ;

/* Variables and functions */
 int /*<<< orphan*/  mainBox ; 
 int /*<<< orphan*/  mainTab ; 
 int moveBack ; 
 int /*<<< orphan*/  moveBackText ; 
 int /*<<< orphan*/  moveOutText ; 
 int /*<<< orphan*/  page1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(uiButton *b, void *data)
{
	if (moveBack) {
		FUNC1(mainBox, 1);
		FUNC5(mainTab, "Page 1", 0, FUNC3(page1));
		FUNC2(b, moveOutText);
		moveBack = 0;
		return;
	}
	FUNC4(mainTab, 0);
	FUNC0(mainBox, FUNC3(page1), 1);
	FUNC2(b, moveBackText);
	moveBack = 1;
}