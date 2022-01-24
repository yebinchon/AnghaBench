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
typedef  int /*<<< orphan*/  uiAreaHandler ;
struct TYPE_3__ {int /*<<< orphan*/  KeyEvent; int /*<<< orphan*/  DragBroken; int /*<<< orphan*/  MouseCrossed; int /*<<< orphan*/  MouseEvent; int /*<<< orphan*/  Draw; } ;
struct TYPE_4__ {TYPE_1__ ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  area ; 
 int /*<<< orphan*/  areaSize ; 
 TYPE_2__ handler ; 
 int /*<<< orphan*/  handlerDragBroken ; 
 int /*<<< orphan*/  handlerDraw ; 
 int /*<<< orphan*/  handlerKeyEvent ; 
 int /*<<< orphan*/  handlerMouseCrossed ; 
 int /*<<< orphan*/  handlerMouseEvent ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uiGroup *FUNC4(void)
{
	uiGroup *group;

	handler.ah.Draw = handlerDraw;
	handler.ah.MouseEvent = handlerMouseEvent;
	handler.ah.MouseCrossed = handlerMouseCrossed;
	handler.ah.DragBroken = handlerDragBroken;
	handler.ah.KeyEvent = handlerKeyEvent;

	group = FUNC0("Scrolling Drawing Test");

	area = FUNC3((uiAreaHandler *) (&handler),
		areaSize, areaSize);
	FUNC2(group, FUNC1(area));

	return group;
}