#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  onChangedSignal; int /*<<< orphan*/  editable; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ uiEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

void FUNC3(uiEntry *e, const char *text)
{
	// we need to inhibit sending of ::changed because this WILL send a ::changed otherwise
	FUNC0(e->editable, e->onChangedSignal);
	FUNC2(e->entry, text);
	FUNC1(e->editable, e->onChangedSignal);
	// don't queue the control for resize; entry sizes are independent of their contents
}