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
typedef  int* vec3_t ;
struct TYPE_5__ {int* start; int* end; } ;
typedef  TYPE_1__ aas_reachability_t ;
struct TYPE_6__ {int* endpos; int stopevent; } ;
typedef  TYPE_2__ aas_clientmove_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,float,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRESENCE_NORMAL ; 
 int SE_ENTERLAVA ; 
 int SE_ENTERSLIME ; 
 int SE_ENTERWATER ; 
 int SE_GAP ; 
 int SE_HITGROUNDDAMAGE ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC4(aas_reachability_t *reach, vec3_t runstart)
{
	vec3_t hordir, start, cmdmove;
	aas_clientmove_t move;

	//
	hordir[0] = reach->start[0] - reach->end[0];
	hordir[1] = reach->start[1] - reach->end[1];
	hordir[2] = 0;
	FUNC2(hordir);
	//start point
	FUNC1(reach->start, start);
	start[2] += 1;
	//get command movement
	FUNC3(hordir, 400, cmdmove);
	//
	FUNC0(&move, -1, start, PRESENCE_NORMAL, qtrue,
								vec3_origin, cmdmove, 1, 2, 0.1f,
								SE_ENTERWATER|SE_ENTERSLIME|SE_ENTERLAVA|
								SE_HITGROUNDDAMAGE|SE_GAP, 0, qfalse);
	FUNC1(move.endpos, runstart);
	//don't enter slime or lava and don't fall from too high
	if (move.stopevent & (SE_ENTERSLIME|SE_ENTERLAVA|SE_HITGROUNDDAMAGE))
	{
		FUNC1(start, runstart);
	} //end if
}