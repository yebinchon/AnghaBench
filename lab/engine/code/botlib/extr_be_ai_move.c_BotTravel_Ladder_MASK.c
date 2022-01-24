#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_9__ {int /*<<< orphan*/  client; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_10__ {int /*<<< orphan*/  movedir; int /*<<< orphan*/  flags; int /*<<< orphan*/  ideal_viewangles; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_11__ {int /*<<< orphan*/  end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MOVERESULT_MOVEMENTVIEW ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC7(bot_movestate_t *ms, aas_reachability_t *reach)
{
	//float dist, speed;
	vec3_t dir, viewdir;//, hordir;
	vec3_t origin = {0, 0, 0};
//	vec3_t up = {0, 0, 1};
	FUNC6( result );

	//
//	if ((ms->moveflags & MFL_AGAINSTLADDER))
		//NOTE: not a good idea for ladders starting in water
		// || !(ms->moveflags & MFL_ONGROUND))
	{
		//botimport.Print(PRT_MESSAGE, "against ladder or not on ground\n");
		FUNC5(reach->end, ms->origin, dir);
		FUNC4(dir);
		//set the ideal view angles, facing the ladder up or down
		viewdir[0] = dir[0];
		viewdir[1] = dir[1];
		viewdir[2] = 3 * dir[2];
		FUNC2(viewdir, result.ideal_viewangles);
		//elemantary action
		FUNC0(ms->client, origin, 0);
		FUNC1(ms->client);
		//set movement view flag so the AI can see the view is focussed
		result.flags |= MOVERESULT_MOVEMENTVIEW;
	} //end if
/*	else
	{
		//botimport.Print(PRT_MESSAGE, "moving towards ladder\n");
		VectorSubtract(reach->end, ms->origin, dir);
		//make sure the horizontal movement is large enough
		VectorCopy(dir, hordir);
		hordir[2] = 0;
		dist = VectorNormalize(hordir);
		//
		dir[0] = hordir[0];
		dir[1] = hordir[1];
		if (dir[2] > 0) dir[2] = 1;
		else dir[2] = -1;
		if (dist > 50) dist = 50;
		speed = 400 - (200 - 4 * dist);
		EA_Move(ms->client, dir, speed);
	} //end else*/
	//save the movement direction
	FUNC3(dir, result.movedir);
	//
	return result;
}