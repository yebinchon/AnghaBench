#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_5__ {float* endpos; int /*<<< orphan*/  startsolid; } ;
typedef  TYPE_1__ aas_trace_t ;
typedef  int /*<<< orphan*/  aas_link_t ;
struct TYPE_7__ {int /*<<< orphan*/  loaded; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (float*,float*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (float*) ; 
 TYPE_1__ FUNC4 (float*,float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LINECOLOR_RED ; 
 int /*<<< orphan*/  FUNC6 (char*,float,float,float,int) ; 
 int /*<<< orphan*/  PRESENCE_CROUCH ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*) ; 
 TYPE_3__ aasworld ; 
 TYPE_2__ botimport ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

int FUNC11(vec3_t origin, vec3_t mins, vec3_t maxs, vec3_t goalorigin)
{
	int areanum, i, j, k, l;
	aas_link_t *areas;
	vec3_t absmins, absmaxs;
	//vec3_t bbmins, bbmaxs;
	vec3_t start, end;
	aas_trace_t trace;

	if (!aasworld.loaded)
	{
		botimport.Print(PRT_ERROR, "AAS_BestReachableArea: aas not loaded\n");
		return 0;
	} //end if
	//find a point in an area
	FUNC8(origin, start);
	areanum = FUNC3(start);
	//while no area found fudge around a little
	for (i = 0; i < 5 && !areanum; i++)
	{
		for (j = 0; j < 5 && !areanum; j++)
		{
			for (k = -1; k <= 1 && !areanum; k++)
			{
				for (l = -1; l <= 1 && !areanum; l++)
				{
					FUNC8(origin, start);
					start[0] += (float) j * 4 * k;
					start[1] += (float) j * 4 * l;
					start[2] += (float) i * 4;
					areanum = FUNC3(start);
				} //end for
			} //end for
		} //end for
	} //end for
	//if an area was found
	if (areanum)
	{
		//drop client bbox down and try again
		FUNC8(start, end);
		start[2] += 0.25;
		end[2] -= 50;
		trace = FUNC4(start, end, PRESENCE_CROUCH, -1);
		if (!trace.startsolid)
		{
			areanum = FUNC3(trace.endpos);
			FUNC8(trace.endpos, goalorigin);
			//FIXME: cannot enable next line right now because the reachability
			// does not have to be calculated when the level items are loaded
			//if the origin is in an area with reachability
			//if (AAS_AreaReachability(areanum)) return areanum;
			if (areanum) return areanum;
		} //end if
		else
		{
			//it can very well happen that the AAS_PointAreaNum function tells that
			//a point is in an area and that starting an AAS_TraceClientBBox from that
			//point will return trace.startsolid qtrue
#if 0
			if (AAS_PointAreaNum(start))
			{
				Log_Write("point %f %f %f in area %d but trace startsolid", start[0], start[1], start[2], areanum);
				AAS_DrawPermanentCross(start, 4, LINECOLOR_RED);
			} //end if
			botimport.Print(PRT_MESSAGE, "AAS_BestReachableArea: start solid\n");
#endif
			FUNC8(start, goalorigin);
			return areanum;
		} //end else
	} //end if
	//
	//AAS_PresenceTypeBoundingBox(PRESENCE_CROUCH, bbmins, bbmaxs);
	//NOTE: the goal origin does not have to be in the goal area
	// because the bot will have to move towards the item origin anyway
	FUNC8(origin, goalorigin);
	//
	FUNC7(origin, mins, absmins);
	FUNC7(origin, maxs, absmaxs);
	//add bounding box size
	//VectorSubtract(absmins, bbmaxs, absmins);
	//VectorSubtract(absmaxs, bbmins, absmaxs);
	//link an invalid (-1) entity
	areas = FUNC2(absmins, absmaxs, -1, PRESENCE_CROUCH);
	//get the reachable link area
	areanum = FUNC0(areas);
	//unlink the invalid entity
	FUNC5(areas);
	//
	return areanum;
}