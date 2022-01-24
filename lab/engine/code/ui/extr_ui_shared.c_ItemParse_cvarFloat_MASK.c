#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_5__ {int /*<<< orphan*/  cvar; scalar_t__ typeData; } ;
typedef  TYPE_1__ itemDef_t ;
struct TYPE_6__ {int /*<<< orphan*/  maxVal; int /*<<< orphan*/  minVal; int /*<<< orphan*/  defVal; } ;
typedef  TYPE_2__ editFieldDef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC3( itemDef_t *item, int handle ) {
	editFieldDef_t *editPtr;

	FUNC0(item);
	if (!item->typeData)
		return qfalse;
	editPtr = (editFieldDef_t*)item->typeData;
	if (FUNC2(handle, &item->cvar) &&
		FUNC1(handle, &editPtr->defVal) &&
		FUNC1(handle, &editPtr->minVal) &&
		FUNC1(handle, &editPtr->maxVal)) {
		return qtrue;
	}
	return qfalse;
}