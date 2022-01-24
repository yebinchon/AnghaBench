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
struct TYPE_11__ {int moveflags; int /*<<< orphan*/  client; scalar_t__* origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int /*<<< orphan*/  movedir; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {scalar_t__* end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int MFL_SWIMMING ; 
 int /*<<< orphan*/  MOVERESULT_SWIMVIEW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 float FUNC4 (scalar_t__*) ; 
 float FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__) ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC8(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t bob_origin, bob_start, bob_end, dir, hordir, bottomcenter;
	FUNC7( result );
	float dist, speed;

	//
	FUNC0(reach, bob_start, bob_end, bob_origin);
	//
	FUNC6(bob_origin, bob_end, dir);
	dist = FUNC4(dir);
	//if the func_bobbing is near the end
	if (dist < 16)
	{
		FUNC6(reach->end, ms->origin, hordir);
		if (!(ms->moveflags & MFL_SWIMMING)) hordir[2] = 0;
		dist = FUNC5(hordir);
		//
		if (dist > 60) dist = 60;
		speed = 360 - (360 - 6 * dist);
		//
		if (speed > 5) FUNC1(ms->client, dir, speed);
		FUNC3(dir, result.movedir);
		//
		if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
	} //end if
	else
	{
		FUNC2(reach, bottomcenter);
		FUNC6(bottomcenter, ms->origin, hordir);
		if (!(ms->moveflags & MFL_SWIMMING)) hordir[2] = 0;
		dist = FUNC5(hordir);
		//
		if (dist > 5)
		{
			//move to the center of the plat
			if (dist > 100) dist = 100;
			speed = 400 - (400 - 4 * dist);
			//
			FUNC1(ms->client, hordir, speed);
			FUNC3(hordir, result.movedir);
		} //end if
	} //end else
	return result;
}