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
typedef  float* vec3_t ;
struct TYPE_5__ {int traveltype; float edgenum; float facenum; int /*<<< orphan*/  areanum; int /*<<< orphan*/  start; int /*<<< orphan*/  end; } ;
typedef  TYPE_1__ aas_reachability_t ;
typedef  int /*<<< orphan*/  aas_clientmove_t ;
struct TYPE_6__ {float phys_jumpvel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,float*,int,int,float,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINECOLOR_BLUE ; 
 int /*<<< orphan*/  LINECOLOR_YELLOW ; 
 int /*<<< orphan*/  PRESENCE_NORMAL ; 
 int SE_ENTERLAVA ; 
 int SE_ENTERSLIME ; 
 int SE_ENTERWATER ; 
 int SE_HITGROUND ; 
 int SE_HITGROUNDAREA ; 
 int SE_HITGROUNDDAMAGE ; 
 int SE_TOUCHJUMPPAD ; 
 int TRAVELTYPE_MASK ; 
 int TRAVEL_JUMP ; 
 int TRAVEL_JUMPPAD ; 
 int TRAVEL_ROCKETJUMP ; 
 int TRAVEL_WALKOFFLEDGE ; 
 int /*<<< orphan*/  FUNC7 (float*) ; 
 int /*<<< orphan*/  FUNC8 (float*) ; 
 int /*<<< orphan*/  FUNC9 (float*,float,float*) ; 
 int /*<<< orphan*/  FUNC10 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 TYPE_2__ aassettings ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC12(aas_reachability_t *reach)
{
	vec3_t dir, cmdmove, velocity;
	float speed, zvel;
	aas_clientmove_t move;

	FUNC6(reach->areanum, 5, qtrue);
	//AAS_ShowArea(reach->areanum, qtrue);
	FUNC0(reach->start, reach->end, LINECOLOR_BLUE, LINECOLOR_YELLOW);
	//
	if ((reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_JUMP ||
		(reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_WALKOFFLEDGE)
	{
		FUNC2(aassettings.phys_jumpvel, reach->start, reach->end, &speed);
		//
		FUNC11(reach->end, reach->start, dir);
		dir[2] = 0;
		FUNC8(dir);
		//set the velocity
		FUNC9(dir, speed, velocity);
		//set the command movement
		FUNC7(cmdmove);
		cmdmove[2] = aassettings.phys_jumpvel;
		//
		FUNC4(&move, -1, reach->start, PRESENCE_NORMAL, qtrue,
									velocity, cmdmove, 3, 30, 0.1f,
									SE_HITGROUND|SE_ENTERWATER|SE_ENTERSLIME|
									SE_ENTERLAVA|SE_HITGROUNDDAMAGE, 0, qtrue);
		//
		if ((reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_JUMP)
		{
			FUNC3(reach, dir);
			FUNC1(dir, 4, LINECOLOR_BLUE);
		} //end if
	} //end if
	else if ((reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_ROCKETJUMP)
	{
		zvel = FUNC5(reach->start);
		FUNC2(zvel, reach->start, reach->end, &speed);
		//
		FUNC11(reach->end, reach->start, dir);
		dir[2] = 0;
		FUNC8(dir);
		//get command movement
		FUNC9(dir, speed, cmdmove);
		FUNC10(velocity, 0, 0, zvel);
		//
		FUNC4(&move, -1, reach->start, PRESENCE_NORMAL, qtrue,
									velocity, cmdmove, 30, 30, 0.1f,
									SE_ENTERWATER|SE_ENTERSLIME|
									SE_ENTERLAVA|SE_HITGROUNDDAMAGE|
									SE_TOUCHJUMPPAD|SE_HITGROUNDAREA, reach->areanum, qtrue);
	} //end else if
	else if ((reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_JUMPPAD)
	{
		FUNC10(cmdmove, 0, 0, 0);
		//
		FUNC11(reach->end, reach->start, dir);
		dir[2] = 0;
		FUNC8(dir);
		//set the velocity
		//NOTE: the edgenum is the horizontal velocity
		FUNC9(dir, reach->edgenum, velocity);
		//NOTE: the facenum is the Z velocity
		velocity[2] = reach->facenum;
		//
		FUNC4(&move, -1, reach->start, PRESENCE_NORMAL, qtrue,
									velocity, cmdmove, 30, 30, 0.1f,
									SE_ENTERWATER|SE_ENTERSLIME|
									SE_ENTERLAVA|SE_HITGROUNDDAMAGE|
									SE_TOUCHJUMPPAD|SE_HITGROUNDAREA, reach->areanum, qtrue);
	} //end else if
}