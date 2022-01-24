#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_11__ {int moveflags; int /*<<< orphan*/  lastorigin; scalar_t__* origin; int /*<<< orphan*/  lastgoalareanum; scalar_t__ lastareanum; scalar_t__ lastreachnum; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  ideal_viewangles; int /*<<< orphan*/  movedir; int /*<<< orphan*/  traveltype; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {int /*<<< orphan*/  areanum; scalar_t__* origin; } ;
typedef  TYPE_3__ bot_goal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int MFL_SWIMMING ; 
 int /*<<< orphan*/  MOVERESULT_SWIMVIEW ; 
 int /*<<< orphan*/  TRAVEL_SWIM ; 
 int /*<<< orphan*/  TRAVEL_WALK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 float FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC6(bot_movestate_t *ms, bot_goal_t *goal)
{
	FUNC5( result );
	vec3_t dir;
	float dist, speed;

#ifdef DEBUG
	//botimport.Print(PRT_MESSAGE, "%s: moving straight to goal\n", ClientName(ms->entitynum-1));
	//AAS_ClearShownDebugLines();
	//AAS_DebugLine(ms->origin, goal->origin, LINECOLOR_RED);
#endif //DEBUG
	//walk straight to the goal origin
	dir[0] = goal->origin[0] - ms->origin[0];
	dir[1] = goal->origin[1] - ms->origin[1];
	if (ms->moveflags & MFL_SWIMMING)
	{
		dir[2] = goal->origin[2] - ms->origin[2];
		result.traveltype = TRAVEL_SWIM;
	} //end if
	else
	{
		dir[2] = 0;
		result.traveltype = TRAVEL_WALK;
	} //endif
	//
	dist = FUNC4(dir);
	if (dist > 100) dist = 100;
	speed = 400 - (400 - 4 * dist);
	if (speed < 10) speed = 0;
	//
	FUNC0(ms, dir, qtrue, &result);
	//elemantary action move in direction
	FUNC1(ms->client, dir, speed);
	FUNC3(dir, result.movedir);
	//
	if (ms->moveflags & MFL_SWIMMING)
	{
		FUNC2(dir, result.ideal_viewangles);
		result.flags |= MOVERESULT_SWIMVIEW;
	} //end if
	//if (!debugline) debugline = botimport.DebugLineCreate();
	//botimport.DebugLineShow(debugline, ms->origin, goal->origin, LINECOLOR_BLUE);
	//
	ms->lastreachnum = 0;
	ms->lastareanum = 0;
	ms->lastgoalareanum = goal->areanum;
	FUNC3(ms->origin, ms->lastorigin);
	//
	return result;
}