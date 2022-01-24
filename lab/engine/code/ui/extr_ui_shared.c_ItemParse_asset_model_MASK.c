#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_6__ {int angle; } ;
typedef  TYPE_1__ modelDef_t ;
struct TYPE_7__ {int /*<<< orphan*/  asset; scalar_t__ typeData; } ;
typedef  TYPE_2__ itemDef_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* registerModel ) (char const*) ;} ;

/* Variables and functions */
 TYPE_5__* DC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

qboolean FUNC4( itemDef_t *item, int handle ) {
	const char *temp;
	modelDef_t *modelPtr;
	FUNC0(item);
	modelPtr = (modelDef_t*)item->typeData;

	if (!FUNC1(handle, &temp)) {
		return qfalse;
	}
	item->asset = DC->registerModel(temp);
	modelPtr->angle = FUNC2() % 360;
	return qtrue;
}