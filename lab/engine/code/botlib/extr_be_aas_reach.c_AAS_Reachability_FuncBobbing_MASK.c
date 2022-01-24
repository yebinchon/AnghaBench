#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_10__ {int dist; int* normal; } ;
typedef  TYPE_1__ aas_plane_t ;
struct TYPE_11__ {size_t areanum; int* start; int* end; int edgenum; int facenum; struct TYPE_11__* next; int /*<<< orphan*/  traveltime; int /*<<< orphan*/  traveltype; } ;
typedef  TYPE_2__ aas_lreachability_t ;
struct TYPE_13__ {int /*<<< orphan*/  rs_funcbob; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int*,int*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int**,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,float*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int FUNC9 (int*,int*,int*,int**,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int*) ; 
 int /*<<< orphan*/  FUNC13 (char*,size_t,size_t,...) ; 
 int MAX_EPAIRKEY ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 int /*<<< orphan*/  TRAVEL_FUNCBOB ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int*) ; 
 int /*<<< orphan*/  FUNC18 (int*,double,int*) ; 
 int /*<<< orphan*/  FUNC19 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int*,int*,int*) ; 
 TYPE_5__ aassettings ; 
 TYPE_2__** areareachability ; 
 int FUNC21 (char*) ; 
 TYPE_3__ botimport ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  reach_funcbob ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 

void FUNC25(void)
{
	int ent, spawnflags, modelnum, axis;
	int i, numareas, areas[10];
	char classname[MAX_EPAIRKEY], model[MAX_EPAIRKEY];
	vec3_t origin, move_end, move_start, move_start_top, move_end_top;
	vec3_t mins, maxs, angles = {0, 0, 0};
	vec3_t start_edgeverts[4], end_edgeverts[4], mid;
	vec3_t org, start, end, dir, points[10];
	float height;
	aas_plane_t start_plane, end_plane;
	aas_lreachability_t *startreach, *endreach, *nextstartreach, *nextendreach, *lreach;
	aas_lreachability_t *firststartreach, *firstendreach;

	for (ent = FUNC6(0); ent; ent = FUNC6(ent))
	{
		if (!FUNC11(ent, "classname", classname, MAX_EPAIRKEY)) continue;
		if (FUNC22(classname, "func_bobbing")) continue;
		FUNC3(ent, "height", &height);
		if (!height) height = 32;
		//
		if (!FUNC11(ent, "model", model, MAX_EPAIRKEY))
		{
			botimport.Print(PRT_ERROR, "func_bobbing without model\n");
			continue;
		} //end if
		//get the model number, and skip the leading *
		modelnum = FUNC21(model+1);
		if (modelnum <= 0)
		{
			botimport.Print(PRT_ERROR, "func_bobbing with invalid model number\n");
			continue;
		} //end if
		//if the entity has an origin set then use it
		if (!FUNC12(ent, "origin", origin))
			FUNC19(origin, 0, 0, 0);
		//
		FUNC1(modelnum, angles, mins, maxs, NULL);
		//
		FUNC14(mins, origin, mins);
		FUNC14(maxs, origin, maxs);
		//
		FUNC14(mins, maxs, mid);
		FUNC18(mid, 0.5, mid);
		FUNC15(mid, origin);
		//
		FUNC15(origin, move_end);
		FUNC15(origin, move_start);
		//
		FUNC5(ent, "spawnflags", &spawnflags);
		// set the axis of bobbing
		if (spawnflags & 1) axis = 0;
		else if (spawnflags & 2) axis = 1;
		else axis = 2;
		//
		move_start[axis] -= height;
		move_end[axis] += height;
		//
		FUNC13("funcbob model %d, start = {%1.1f, %1.1f, %1.1f} end = {%1.1f, %1.1f, %1.1f}\n",
					modelnum, move_start[0], move_start[1], move_start[2], move_end[0], move_end[1], move_end[2]);
		//
#ifndef BSPC
		/*
		AAS_DrawPermanentCross(move_start, 4, 1);
		AAS_DrawPermanentCross(move_end, 4, 2);
		*/
#endif
		//
		for (i = 0; i < 4; i++)
		{
			FUNC15(move_start, start_edgeverts[i]);
			start_edgeverts[i][2] += maxs[2] - mid[2]; //+ bbox maxs z
			start_edgeverts[i][2] += 24;	//+ player origin to ground dist
		} //end for
		start_edgeverts[0][0] += maxs[0] - mid[0];
		start_edgeverts[0][1] += maxs[1] - mid[1];
		start_edgeverts[1][0] += maxs[0] - mid[0];
		start_edgeverts[1][1] += mins[1] - mid[1];
		start_edgeverts[2][0] += mins[0] - mid[0];
		start_edgeverts[2][1] += mins[1] - mid[1];
		start_edgeverts[3][0] += mins[0] - mid[0];
		start_edgeverts[3][1] += maxs[1] - mid[1];
		//
		start_plane.dist = start_edgeverts[0][2];
		FUNC19(start_plane.normal, 0, 0, 1);
		//
		for (i = 0; i < 4; i++)
		{
			FUNC15(move_end, end_edgeverts[i]);
			end_edgeverts[i][2] += maxs[2] - mid[2]; //+ bbox maxs z
			end_edgeverts[i][2] += 24;	//+ player origin to ground dist
		} //end for
		end_edgeverts[0][0] += maxs[0] - mid[0];
		end_edgeverts[0][1] += maxs[1] - mid[1];
		end_edgeverts[1][0] += maxs[0] - mid[0];
		end_edgeverts[1][1] += mins[1] - mid[1];
		end_edgeverts[2][0] += mins[0] - mid[0];
		end_edgeverts[2][1] += mins[1] - mid[1];
		end_edgeverts[3][0] += mins[0] - mid[0];
		end_edgeverts[3][1] += maxs[1] - mid[1];
		//
		end_plane.dist = end_edgeverts[0][2];
		FUNC19(end_plane.normal, 0, 0, 1);
		//
#ifndef BSPC
#if 0
		for (i = 0; i < 4; i++)
		{
			AAS_PermanentLine(start_edgeverts[i], start_edgeverts[(i+1)%4], 1);
			AAS_PermanentLine(end_edgeverts[i], end_edgeverts[(i+1)%4], 1);
		} //end for
#endif
#endif
		FUNC15(move_start, move_start_top);
		move_start_top[2] += maxs[2] - mid[2] + 24; //+ bbox maxs z
		FUNC15(move_end, move_end_top);
		move_end_top[2] += maxs[2] - mid[2] + 24; //+ bbox maxs z
		//
		if (!FUNC8(move_start_top)) continue;
		if (!FUNC8(move_end_top)) continue;
		//
		for (i = 0; i < 2; i++)
		{
			//
			if (i == 0)
			{
				firststartreach = FUNC2(start_edgeverts, 4, &start_plane, qtrue);
				firstendreach = FUNC2(end_edgeverts, 4, &end_plane, qfalse);
			} //end if
			else
			{
				firststartreach = FUNC2(end_edgeverts, 4, &end_plane, qtrue);
				firstendreach = FUNC2(start_edgeverts, 4, &start_plane, qfalse);
			} //end else
			//
			//create reachabilities from start to end
			for (startreach = firststartreach; startreach; startreach = nextstartreach)
			{
				nextstartreach = startreach->next;
				//
				//trace = AAS_TraceClientBBox(startreach->start, move_start_top, PRESENCE_NORMAL, -1);
				//if (trace.fraction < 1) continue;
				//
				for (endreach = firstendreach; endreach; endreach = nextendreach)
				{
					nextendreach = endreach->next;
					//
					//trace = AAS_TraceClientBBox(endreach->end, move_end_top, PRESENCE_NORMAL, -1);
					//if (trace.fraction < 1) continue;
					//
					FUNC13("funcbob reach from area %d to %d\n", startreach->areanum, endreach->areanum);
					//
					//
					if (i == 0) FUNC15(move_start_top, org);
					else FUNC15(move_end_top, org);
					FUNC20(startreach->start, org, dir);
					dir[2] = 0;
					FUNC17(dir);
					FUNC15(startreach->start, start);
					FUNC16(startreach->start, 1, dir, start);
					start[2] += 1;
					FUNC16(startreach->start, 16, dir, end);
					end[2] += 1;
					//
					numareas = FUNC9(start, end, areas, points, 10);
					if (numareas <= 0) continue;
					if (numareas > 1) FUNC15(points[1], startreach->start);
					else FUNC15(end, startreach->start);
					//
					if (!FUNC8(startreach->start)) continue;
					if (!FUNC8(endreach->end)) continue;
					//
					lreach = FUNC0();
					lreach->areanum = endreach->areanum;
					if (i == 0) lreach->edgenum = ((int)move_start[axis] << 16) | ((int) move_end[axis] & 0x0000ffff);
					else lreach->edgenum = ((int)move_end[axis] << 16) | ((int) move_start[axis] & 0x0000ffff);
					lreach->facenum = (spawnflags << 16) | modelnum;
					FUNC15(startreach->start, lreach->start);
					FUNC15(endreach->end, lreach->end);
#ifndef BSPC
//					AAS_DrawArrow(lreach->start, lreach->end, LINECOLOR_BLUE, LINECOLOR_YELLOW);
//					AAS_PermanentLine(lreach->start, lreach->end, 1);
#endif
					lreach->traveltype = TRAVEL_FUNCBOB;
					lreach->traveltype |= FUNC10(ent);
					lreach->traveltime = aassettings.rs_funcbob;
					reach_funcbob++;
					lreach->next = areareachability[startreach->areanum];
					areareachability[startreach->areanum] = lreach;
					//
				} //end for
			} //end for
			for (startreach = firststartreach; startreach; startreach = nextstartreach)
			{
				nextstartreach = startreach->next;
				FUNC4(startreach);
			} //end for
			for (endreach = firstendreach; endreach; endreach = nextendreach)
			{
				nextendreach = endreach->next;
				FUNC4(endreach);
			} //end for
			//only go up with func_bobbing entities that go up and down
			if (!(spawnflags & 1) && !(spawnflags & 2)) break;
		} //end for
	} //end for
}