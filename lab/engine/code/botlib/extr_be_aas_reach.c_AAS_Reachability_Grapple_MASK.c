#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  int vec_t ;
typedef  int* vec3_t ;
struct TYPE_20__ {int flags; } ;
struct TYPE_22__ {int fraction; int* endpos; TYPE_3__ surface; } ;
typedef  TYPE_5__ bsp_trace_t ;
struct TYPE_23__ {int* endpos; int fraction; scalar_t__ startsolid; } ;
typedef  TYPE_6__ aas_trace_t ;
struct TYPE_24__ {int areanum; int facenum; int* start; int* end; struct TYPE_24__* next; scalar_t__ traveltime; int /*<<< orphan*/  traveltype; scalar_t__ edgenum; } ;
typedef  TYPE_7__ aas_lreachability_t ;
struct TYPE_25__ {int faceflags; size_t firstedge; size_t planenum; } ;
typedef  TYPE_8__ aas_face_t ;
struct TYPE_26__ {scalar_t__* maxs; scalar_t__* mins; int* center; int numfaces; int firstface; } ;
typedef  TYPE_9__ aas_area_t ;
struct TYPE_21__ {int contents; } ;
struct TYPE_19__ {int* normal; } ;
struct TYPE_18__ {size_t* v; } ;
struct TYPE_17__ {scalar_t__ rs_startgrapple; } ;
struct TYPE_16__ {int* faceindex; int** vertexes; int* edgeindex; TYPE_4__* areasettings; TYPE_2__* planes; TYPE_1__* edges; TYPE_8__* faces; TYPE_9__* areas; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int*) ; 
 int FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int,int) ; 
 TYPE_5__ FUNC9 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int*,int*,int*,int /*<<< orphan*/ *,int) ; 
 TYPE_6__ FUNC11 (int*,int*,int,int) ; 
 int AREACONTENTS_CLUSTERPORTAL ; 
 int AREACONTENTS_LAVA ; 
 int AREACONTENTS_SLIME ; 
 int CONTENTS_LAVA ; 
 int CONTENTS_SLIME ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 int CONTENTS_WATER ; 
 scalar_t__ FUNC12 (int*,int*) ; 
 int FACE_SOLID ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int,int,int) ; 
 int M_PI ; 
 int PRESENCE_CROUCH ; 
 int PRESENCE_NORMAL ; 
 int SURF_SKY ; 
 int /*<<< orphan*/  TRAVEL_GRAPPLEHOOK ; 
 int /*<<< orphan*/  FUNC14 (int*,int*) ; 
 double FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 (int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int*) ; 
 int /*<<< orphan*/  FUNC18 (int*,int*,int*) ; 
 TYPE_12__ aassettings ; 
 TYPE_11__ aasworld ; 
 size_t FUNC19 (int) ; 
 TYPE_7__** areareachability ; 
 int qfalse ; 
 int /*<<< orphan*/  reach_grapple ; 
 float FUNC20 (int) ; 

int FUNC21(int area1num, int area2num)
{
	int face2num, i, j, areanum, numareas, areas[20];
	float mingrappleangle, z, hordist;
	bsp_trace_t bsptrace;
	aas_trace_t trace;
	aas_face_t *face2;
	aas_area_t *area1, *area2;
	aas_lreachability_t *lreach;
	vec3_t areastart = {0, 0, 0}, facecenter, start, end, dir, down = {0, 0, -1};
	vec_t *v;

	//only grapple when on the ground or swimming
	if (!FUNC1(area1num) && !FUNC3(area1num)) return qfalse;
	//don't grapple from a crouch area
	if (!(FUNC2(area1num) & PRESENCE_NORMAL)) return qfalse;
	//NOTE: disabled area swim it doesn't work right
	if (FUNC3(area1num)) return qfalse;
	//
	area1 = &aasworld.areas[area1num];
	area2 = &aasworld.areas[area2num];
	//don't grapple towards way lower areas
	if (area2->maxs[2] < area1->mins[2]) return qfalse;
	//
	FUNC14(aasworld.areas[area1num].center, start);
	//if not a swim area
	if (!FUNC3(area1num))
	{
		if (!FUNC6(start)) FUNC13("area %d center %f %f %f in solid?\r\n", area1num,
								start[0], start[1], start[2]);
		FUNC14(start, end);
		end[2] -= 1000;
		trace = FUNC11(start, end, PRESENCE_CROUCH, -1);
		if (trace.startsolid) return qfalse;
		FUNC14(trace.endpos, areastart);
	} //end if
	else
	{
		if (!(FUNC7(start) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER))) return qfalse;
	} //end else
	//
	//start is now the start point
	//
	for (i = 0; i < area2->numfaces; i++)
	{
		face2num = aasworld.faceindex[area2->firstface + i];
		face2 = &aasworld.faces[FUNC19(face2num)];
		//if it is not a solid face
		if (!(face2->faceflags & FACE_SOLID)) continue;
		//direction towards the first vertex of the face
		v = aasworld.vertexes[aasworld.edges[FUNC19(aasworld.edgeindex[face2->firstedge])].v[0]];
		FUNC18(v, areastart, dir);
		//if the face plane is facing away
		if (FUNC12(aasworld.planes[face2->planenum].normal, dir) > 0) continue;
		//get the center of the face
		FUNC4(face2num, facecenter);
		//only go higher up with the grapple
		if (facecenter[2] < areastart[2] + 64) continue;
		//only use vertical faces or downward facing faces
		if (FUNC12(aasworld.planes[face2->planenum].normal, down) < 0) continue;
		//direction towards the face center
		FUNC18(facecenter, areastart, dir);
		//
		z = dir[2];
		dir[2] = 0;
		hordist = FUNC15(dir);
		if (!hordist) continue;
		//if too far
		if (hordist > 2000) continue;
		//check the minimal angle of the movement
		mingrappleangle = 15; //15 degrees
		if (z / hordist < FUNC20(2 * M_PI * mingrappleangle / 360)) continue;
		//
		FUNC14(facecenter, start);
		FUNC16(facecenter, -500, aasworld.planes[face2->planenum].normal, end);
		//
		bsptrace = FUNC9(start, NULL, NULL, end, 0, CONTENTS_SOLID);
		//the grapple won't stick to the sky and the grapple point should be near the AAS wall
		if ((bsptrace.surface.flags & SURF_SKY) || (bsptrace.fraction * 500 > 32)) continue;
		//trace a full bounding box from the area center on the ground to
		//the center of the face
		FUNC18(facecenter, areastart, dir);
		FUNC17(dir);
		FUNC16(areastart, 4, dir, start);
		FUNC14(bsptrace.endpos, end);
		trace = FUNC11(start, end, PRESENCE_NORMAL, -1);
		FUNC18(trace.endpos, facecenter, dir);
		if (FUNC15(dir) > 24) continue;
		//
		FUNC14(trace.endpos, start);
		FUNC14(trace.endpos, end);
		end[2] -= FUNC5();
		trace = FUNC11(start, end, PRESENCE_NORMAL, -1);
		if (trace.fraction >= 1) continue;
		//area to end in
		areanum = FUNC6(trace.endpos);
		//if not in lava or slime
		if (aasworld.areasettings[areanum].contents & (AREACONTENTS_SLIME|AREACONTENTS_LAVA))
		{
			continue;
		} //end if
		//do not go the the source area
		if (areanum == area1num) continue;
		//don't create reachabilities if they already exist
		if (FUNC8(area1num, areanum)) continue;
		//only end in areas we can stand
		if (!FUNC1(areanum)) continue;
		//never go through cluster portals!!
		numareas = FUNC10(areastart, bsptrace.endpos, areas, NULL, 20);
		if (numareas >= 20) continue;
		for (j = 0; j < numareas; j++)
		{
			if (aasworld.areasettings[areas[j]].contents & AREACONTENTS_CLUSTERPORTAL) break;
		} //end for
		if (j < numareas) continue;
		//create a new reachability link
		lreach = FUNC0();
		if (!lreach) return qfalse;
		lreach->areanum = areanum;
		lreach->facenum = face2num;
		lreach->edgenum = 0;
		FUNC14(areastart, lreach->start);
		//VectorCopy(facecenter, lreach->end);
		FUNC14(bsptrace.endpos, lreach->end);
		lreach->traveltype = TRAVEL_GRAPPLEHOOK;
		FUNC18(lreach->end, lreach->start, dir);
		lreach->traveltime = aassettings.rs_startgrapple + FUNC15(dir) * 0.25;
		lreach->next = areareachability[area1num];
		areareachability[area1num] = lreach;
		//
		reach_grapple++;
	} //end for
	//
	return qfalse;
}