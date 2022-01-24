#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {int fraction; } ;
typedef  TYPE_1__ bsp_trace_t ;
struct TYPE_8__ {int flags; scalar_t__ entitynum; int /*<<< orphan*/  origin; int /*<<< orphan*/  mins; } ;
typedef  TYPE_2__ bot_goal_t ;
struct TYPE_9__ {double ltime; } ;
typedef  TYPE_3__ aas_entityinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_3__*) ; 
 double FUNC1 () ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 int GFL_ITEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC5(int viewer, vec3_t eye, vec3_t viewangles, bot_goal_t *goal)
{
	aas_entityinfo_t entinfo;
	bsp_trace_t trace;
	vec3_t middle;

	if (!(goal->flags & GFL_ITEM)) return qfalse;
	//
	FUNC3(goal->mins, goal->mins, middle);
	FUNC4(middle, 0.5, middle);
	FUNC3(goal->origin, middle, middle);
	//
	trace = FUNC2(eye, NULL, NULL, middle, viewer, CONTENTS_SOLID);
	//if the goal middle point is visible
	if (trace.fraction >= 1)
	{
		//the goal entity number doesn't have to be valid
		//just assume it's valid
		if (goal->entitynum <= 0)
			return qfalse;
		//
		//if the entity data isn't valid
		FUNC0(goal->entitynum, &entinfo);
		//NOTE: for some wacko reason entities are sometimes
		// not updated
		//if (!entinfo.valid) return qtrue;
		if (entinfo.ltime < FUNC1() - 0.5)
			return qtrue;
	} //end if
	return qfalse;
}