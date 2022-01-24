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
struct TYPE_11__ {int moveflags; int /*<<< orphan*/  client; int /*<<< orphan*/  entitynum; scalar_t__* origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int /*<<< orphan*/  movedir; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {int /*<<< orphan*/  areanum; scalar_t__* end; scalar_t__* start; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 float FUNC2 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int MFL_WALK ; 
 int PRESENCE_NORMAL ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 float FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC9(bot_movestate_t *ms, aas_reachability_t *reach)
{
	float dist, speed;
	vec3_t hordir;
	FUNC8( result );

	//first walk straight to the reachability start
	hordir[0] = reach->start[0] - ms->origin[0];
	hordir[1] = reach->start[1] - ms->origin[1];
	hordir[2] = 0;
	dist = FUNC7(hordir);
	//
	FUNC1(ms, hordir, qtrue, &result);
	//
	if (dist < 10)
	{
		//walk straight to the reachability end
		hordir[0] = reach->end[0] - ms->origin[0];
		hordir[1] = reach->end[1] - ms->origin[1];
		hordir[2] = 0;
		dist = FUNC7(hordir);
	} //end if
	//if going towards a crouch area
	if (!(FUNC0(reach->areanum) & PRESENCE_NORMAL))
	{
		//if pretty close to the reachable area
		if (dist < 20) FUNC3(ms->client);
	} //end if
	//
	dist = FUNC2(ms->origin, hordir, ms->entitynum);
	//
	if (ms->moveflags & MFL_WALK)
	{
		if (dist > 0) speed = 200 - (180 - 1 * dist);
		else speed = 200;
		FUNC5(ms->client);
	} //end if
	else
	{
		if (dist > 0) speed = 400 - (360 - 2 * dist);
		else speed = 400;
	} //end else
	//elemantary action move in direction
	FUNC4(ms->client, hordir, speed);
	FUNC6(hordir, result.movedir);
	//
	return result;
}