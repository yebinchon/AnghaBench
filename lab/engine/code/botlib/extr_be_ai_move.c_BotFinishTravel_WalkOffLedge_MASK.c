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
struct TYPE_11__ {int /*<<< orphan*/  client; int /*<<< orphan*/  velocity; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {scalar_t__* movedir; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {scalar_t__* end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,float*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,float) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 float FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC8(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t dir, hordir, end, v;
	float dist, speed;
	FUNC7( result );

	//
	FUNC6(reach->end, ms->origin, dir);
	FUNC1(ms, dir, qtrue, &result);
	//
	FUNC6(reach->end, ms->origin, v);
	v[2] = 0;
	dist = FUNC5(v);
	if (dist > 16) FUNC4(reach->end, 16, v, end);
	else FUNC3(reach->end, end);
	//
	if (!FUNC0(ms->origin, ms->velocity, end, hordir, &speed))
	{
		//go straight to the reachability end
		FUNC3(dir, hordir);
		hordir[2] = 0;
		//
		speed = 400;
	} //end if
	//
	FUNC2(ms->client, hordir, speed);
	FUNC3(hordir, result.movedir);
	//
	return result;
}