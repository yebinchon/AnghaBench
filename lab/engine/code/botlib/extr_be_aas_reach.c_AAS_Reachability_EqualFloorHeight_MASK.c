#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_11__ {int /*<<< orphan*/  normal; } ;
typedef  TYPE_1__ aas_plane_t ;
struct TYPE_12__ {int areanum; int edgenum; double* start; double* end; int traveltime; struct TYPE_12__* next; int /*<<< orphan*/  traveltype; scalar_t__ facenum; } ;
typedef  TYPE_2__ aas_lreachability_t ;
struct TYPE_13__ {int faceflags; int numedges; int firstedge; size_t planenum; } ;
typedef  TYPE_3__ aas_face_t ;
struct TYPE_14__ {size_t* v; } ;
typedef  TYPE_4__ aas_edge_t ;
struct TYPE_15__ {scalar_t__* mins; scalar_t__* maxs; int numfaces; int firstface; } ;
typedef  TYPE_5__ aas_area_t ;
struct TYPE_17__ {scalar_t__ rs_startcrouch; } ;
struct TYPE_16__ {int* faceindex; int* edgeindex; TYPE_1__* planes; int /*<<< orphan*/ * vertexes; TYPE_4__* edges; TYPE_3__* faces; TYPE_5__* areas; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (double*,int /*<<< orphan*/ ,double*) ; 
 float FUNC5 (double*,double*) ; 
 int FACE_GROUND ; 
 int /*<<< orphan*/  INSIDEUNITS_WALKEND ; 
 int /*<<< orphan*/  INSIDEUNITS_WALKSTART ; 
 int /*<<< orphan*/  TRAVEL_WALK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC7 (double*,double*) ; 
 int /*<<< orphan*/  FUNC8 (double*) ; 
 float FUNC9 (double*) ; 
 int /*<<< orphan*/  FUNC10 (double*,int /*<<< orphan*/ ,double*,double*) ; 
 int /*<<< orphan*/  FUNC11 (double*) ; 
 int /*<<< orphan*/  FUNC12 (double*,double,double*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 
 TYPE_8__ aassettings ; 
 TYPE_7__ aasworld ; 
 size_t FUNC14 (int) ; 
 TYPE_2__** areareachability ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  reach_equalfloor ; 

int FUNC15(int area1num, int area2num)
{
	int i, j, edgenum, edgenum1, edgenum2, foundreach, side;
	float height, bestheight, length, bestlength;
	vec3_t dir, start, end, normal, invgravity, gravitydirection = {0, 0, -1};
	vec3_t edgevec;
	aas_area_t *area1, *area2;
	aas_face_t *face1, *face2;
	aas_edge_t *edge;
	aas_plane_t *plane2;
	aas_lreachability_t lr, *lreach;

	if (!FUNC2(area1num) || !FUNC2(area2num)) return qfalse;

	area1 = &aasworld.areas[area1num];
	area2 = &aasworld.areas[area2num];
	//if the areas are not near enough in the x-y direction
	for (i = 0; i < 2; i++)
	{
		if (area1->mins[i] > area2->maxs[i] + 10) return qfalse;
		if (area1->maxs[i] < area2->mins[i] - 10) return qfalse;
	} //end for
	//if area 2 is too high above area 1
	if (area2->mins[2] > area1->maxs[2]) return qfalse;
	//
	FUNC7(gravitydirection, invgravity);
	FUNC8(invgravity);
	//
	bestheight = 99999;
	bestlength = 0;
	foundreach = qfalse;
	FUNC3(&lr, 0, sizeof(aas_lreachability_t)); //make the compiler happy
	//
	//check if the areas have ground faces with a common edge
	//if existing use the lowest common edge for a reachability link
	for (i = 0; i < area1->numfaces; i++)
	{
		face1 = &aasworld.faces[FUNC14(aasworld.faceindex[area1->firstface + i])];
		if (!(face1->faceflags & FACE_GROUND)) continue;
		//
		for (j = 0; j < area2->numfaces; j++)
		{
			face2 = &aasworld.faces[FUNC14(aasworld.faceindex[area2->firstface + j])];
			if (!(face2->faceflags & FACE_GROUND)) continue;
			//if there is a common edge
			for (edgenum1 = 0; edgenum1 < face1->numedges; edgenum1++)
			{
				for (edgenum2 = 0; edgenum2 < face2->numedges; edgenum2++)
				{
					if (FUNC14(aasworld.edgeindex[face1->firstedge + edgenum1]) !=
							FUNC14(aasworld.edgeindex[face2->firstedge + edgenum2]))
									continue;
					edgenum = aasworld.edgeindex[face1->firstedge + edgenum1];
					side = edgenum < 0;
					edge = &aasworld.edges[FUNC14(edgenum)];
					//get the length of the edge
					FUNC13(aasworld.vertexes[edge->v[1]],
								aasworld.vertexes[edge->v[0]], dir);
					length = FUNC9(dir);
					//get the start point
					FUNC6(aasworld.vertexes[edge->v[0]],
								aasworld.vertexes[edge->v[1]], start);
					FUNC12(start, 0.5, start);
					FUNC7(start, end);
					//get the end point several units inside area2
					//and the start point several units inside area1
					//NOTE: normal is pointing into area2 because the
					//face edges are stored counter clockwise
					FUNC13(aasworld.vertexes[edge->v[side]],
								aasworld.vertexes[edge->v[!side]], edgevec);
					plane2 = &aasworld.planes[face2->planenum];
					FUNC4(edgevec, plane2->normal, normal);
					FUNC11(normal);
					//
					//VectorMA(start, -1, normal, start);
					FUNC10(end, INSIDEUNITS_WALKEND, normal, end);
					FUNC10(start, INSIDEUNITS_WALKSTART, normal, start);
					end[2] += 0.125;
					//
					height = FUNC5(invgravity, start);
					//NOTE: if there's nearby solid or a gap area after this area
					//disabled this crap
					//if (AAS_NearbySolidOrGap(start, end)) height += 200;
					//NOTE: disabled because it disables reachabilities to very small areas
					//if (AAS_PointAreaNum(end) != area2num) continue;
					//get the longest lowest edge
					if (height < bestheight ||
							(height < bestheight + 1 && length > bestlength))
					{
						bestheight = height;
						bestlength = length;
						//create a new reachability link
						lr.areanum = area2num;
						lr.facenum = 0;
						lr.edgenum = edgenum;
						FUNC7(start, lr.start);
						FUNC7(end, lr.end);
						lr.traveltype = TRAVEL_WALK;
						lr.traveltime = 1;
						foundreach = qtrue;
					} //end if
				} //end for
			} //end for
		} //end for
	} //end for
	if (foundreach)
	{
		//create a new reachability link
		lreach = FUNC0();
		if (!lreach) return qfalse;
		lreach->areanum = lr.areanum;
		lreach->facenum = lr.facenum;
		lreach->edgenum = lr.edgenum;
		FUNC7(lr.start, lreach->start);
		FUNC7(lr.end, lreach->end);
		lreach->traveltype = lr.traveltype;
		lreach->traveltime = lr.traveltime;
		lreach->next = areareachability[area1num];
		areareachability[area1num] = lreach;
		//if going into a crouch area
		if (!FUNC1(area1num) && FUNC1(area2num))
		{
			lreach->traveltime += aassettings.rs_startcrouch;
		} //end if
		/*
		//NOTE: if there's nearby solid or a gap area after this area
		if (!AAS_NearbySolidOrGap(lreach->start, lreach->end))
		{
			lreach->traveltime += 100;
		} //end if
		*/
		//avoid rather small areas
		//if (AAS_AreaGroundFaceArea(lreach->areanum) < 500) lreach->traveltime += 100;
		//
		reach_equalfloor++;
		return qtrue;
	} //end if
	return qfalse;
}