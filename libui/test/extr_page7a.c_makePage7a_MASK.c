#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiGroup ;
typedef  int /*<<< orphan*/  uiBox ;
typedef  int /*<<< orphan*/  uiAreaHandler ;
struct TYPE_3__ {int /*<<< orphan*/  KeyEvent; int /*<<< orphan*/  DragBroken; int /*<<< orphan*/  MouseCrossed; int /*<<< orphan*/  MouseEvent; int /*<<< orphan*/  Draw; } ;
struct TYPE_4__ {TYPE_1__ ah; } ;

/* Variables and functions */
 int /*<<< orphan*/ * area ; 
 int /*<<< orphan*/  checkboxToggled ; 
 int /*<<< orphan*/  entryChanged ; 
 TYPE_2__ handler ; 
 int /*<<< orphan*/  handlerDragBroken ; 
 int /*<<< orphan*/  handlerDraw ; 
 int /*<<< orphan*/  handlerKeyEvent ; 
 int /*<<< orphan*/  handlerMouseCrossed ; 
 int /*<<< orphan*/  handlerMouseEvent ; 
 int /*<<< orphan*/ * negative ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * radians ; 
 int /*<<< orphan*/ * startAngle ; 
 int /*<<< orphan*/ * sweep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 

uiGroup *FUNC12(void)
{
	uiGroup *group;
	uiBox *box, *box2;

	handler.ah.Draw = handlerDraw;
	handler.ah.MouseEvent = handlerMouseEvent;
	handler.ah.MouseCrossed = handlerMouseCrossed;
	handler.ah.DragBroken = handlerDragBroken;
	handler.ah.KeyEvent = handlerKeyEvent;

	group = FUNC0("Arc Test");

	box = FUNC2();
	FUNC7(group, FUNC5(box));

	area = FUNC8((uiAreaHandler *) (&handler));
	FUNC3(box, FUNC5(area), 1);

	box2 = FUNC1();
	FUNC3(box, FUNC5(box2), 0);

	FUNC3(box2, FUNC5(FUNC11("Start Angle")), 0);
	startAngle = FUNC10();
	FUNC6(startAngle, entryChanged, NULL);
	FUNC3(box2, FUNC5(startAngle), 1);

	box2 = FUNC1();
	FUNC3(box, FUNC5(box2), 0);

	FUNC3(box2, FUNC5(FUNC11("Sweep")), 0);
	sweep = FUNC10();
	FUNC6(sweep, entryChanged, NULL);
	FUNC3(box2, FUNC5(sweep), 1);

	negative = FUNC9("Negative");
	FUNC4(negative, checkboxToggled, NULL);
	FUNC3(box, FUNC5(negative), 0);

	radians = FUNC9("Radians");
	FUNC4(radians, checkboxToggled, NULL);
	FUNC3(box, FUNC5(radians), 0);

	return group;
}