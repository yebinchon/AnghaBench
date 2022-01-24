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
typedef  scalar_t__* vec3_t ;
struct TYPE_9__ {int /*<<< orphan*/  client; int /*<<< orphan*/  origin; int /*<<< orphan*/  velocity; int /*<<< orphan*/  jumpreach; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_10__ {int /*<<< orphan*/  movedir; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_11__ {int /*<<< orphan*/  end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC6(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t hordir;
	float speed;
	FUNC5( result );

	//if not jumped yet
	if (!ms->jumpreach) return result;
	/*
	//go straight to the reachability end
	hordir[0] = reach->end[0] - ms->origin[0];
	hordir[1] = reach->end[1] - ms->origin[1];
	hordir[2] = 0;
	VectorNormalize(hordir);
	//always use max speed when traveling through the air
	EA_Move(ms->client, hordir, 800);
	VectorCopy(hordir, result.movedir);
	*/
	//
	if (!FUNC0(ms->origin, ms->velocity, reach->end, hordir, &speed))
	{
		//go straight to the reachability end
		FUNC4(reach->end, ms->origin, hordir);
		hordir[2] = 0;
		FUNC3(hordir);
		speed = 400;
	} //end if
	//
	FUNC1(ms->client, hordir, speed);
	FUNC2(hordir, result.movedir);
	//
	return result;
}