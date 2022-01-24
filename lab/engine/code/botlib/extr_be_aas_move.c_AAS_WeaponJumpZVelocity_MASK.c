#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_4__ {int* endpos; } ;
typedef  TYPE_1__ bsp_trace_t ;
struct TYPE_5__ {int phys_jumpvel; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 size_t PITCH ; 
 size_t ROLL ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 double FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,double,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,double,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int*) ; 
 size_t YAW ; 
 TYPE_2__ aassettings ; 

float FUNC9(vec3_t origin, float radiusdamage)
{
	vec3_t kvel, v, start, end, forward, right, viewangles, dir;
	float	mass, knockback, points;
	vec3_t rocketoffset = {8, 8, -8};
	vec3_t botmins = {-16, -16, -24};
	vec3_t botmaxs = {16, 16, 32};
	bsp_trace_t bsptrace;

	//look down (90 degrees)
	viewangles[PITCH] = 90;
	viewangles[YAW] = 0;
	viewangles[ROLL] = 0;
	//get the start point shooting from
	FUNC3(origin, start);
	start[2] += 8; //view offset Z
	FUNC1(viewangles, forward, right, NULL);
	start[0] += forward[0] * rocketoffset[0] + right[0] * rocketoffset[1];
	start[1] += forward[1] * rocketoffset[0] + right[1] * rocketoffset[1];
	start[2] += forward[2] * rocketoffset[0] + right[2] * rocketoffset[1] + rocketoffset[2];
	//end point of the trace
	FUNC5(start, 500, forward, end);
	//trace a line to get the impact point
	bsptrace = FUNC0(start, NULL, NULL, end, 1, CONTENTS_SOLID);
	//calculate the damage the bot will get from the rocket impact
	FUNC2(botmins, botmaxs, v);
	FUNC5(origin, 0.5, v, v);
	FUNC8(bsptrace.endpos, v, v);
	//
	points = radiusdamage - 0.5 * FUNC4(v);
	if (points < 0) points = 0;
	//the owner of the rocket gets half the damage
	points *= 0.5;
	//mass of the bot (p_client.c: PutClientInServer)
	mass = 200;
	//knockback is the same as the damage points
	knockback = points;
	//direction of the damage (from trace.endpos to bot origin)
	FUNC8(origin, bsptrace.endpos, dir);
	FUNC6(dir);
	//damage velocity
	FUNC7(dir, 1600.0 * (float)knockback / mass, kvel);	//the rocket jump hack...
	//rocket impact velocity + jump velocity
	return kvel[2] + aassettings.phys_jumpvel;
}