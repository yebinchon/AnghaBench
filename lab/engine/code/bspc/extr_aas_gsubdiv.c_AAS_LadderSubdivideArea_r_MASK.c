#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
typedef  int* vec3_t ;
struct TYPE_19__ {int planenum; struct TYPE_19__** children; TYPE_4__* tmparea; } ;
typedef  TYPE_2__ tmp_node_t ;
struct TYPE_20__ {int faceflags; size_t planenum; TYPE_4__* frontarea; struct TYPE_20__** next; TYPE_1__* winding; } ;
typedef  TYPE_3__ tmp_face_t ;
struct TYPE_21__ {int contents; int presencetype; TYPE_3__* tmpfaces; } ;
typedef  TYPE_4__ tmp_area_t ;
struct TYPE_22__ {int* normal; double dist; } ;
typedef  TYPE_5__ plane_t ;
struct TYPE_23__ {int /*<<< orphan*/  nodes; } ;
struct TYPE_18__ {int numpoints; int** p; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,TYPE_4__**,TYPE_4__**) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,int) ; 
 int AREACONTENTS_LAVA ; 
 int AREACONTENTS_SLIME ; 
 int AREACONTENTS_WATER ; 
 double FUNC4 (int*,int*) ; 
 int FACE_GROUND ; 
 int FACE_LADDER ; 
 int FUNC5 (int*,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int PRESENCE_NORMAL ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 TYPE_5__* mapplanes ; 
 int /*<<< orphan*/  numladdersubdivisions ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 TYPE_6__ tmpaasworld ; 

tmp_node_t *FUNC9(tmp_node_t *tmpnode)
{
	int side1, i, planenum;
	int foundladderface, foundgroundface;
	float dist;
	tmp_area_t *tmparea, *frontarea, *backarea;
	tmp_face_t *face1;
	tmp_node_t *tmpnode1, *tmpnode2;
	vec3_t lowestpoint, normal = {0, 0, 1};
	plane_t *plane;
	winding_t *w;

	tmparea = tmpnode->tmparea;
	//skip areas with a liquid
	if (tmparea->contents & (AREACONTENTS_WATER
									| AREACONTENTS_LAVA
									| AREACONTENTS_SLIME)) return tmpnode;
	//must be possible to stand in the area
	if (!(tmparea->presencetype & PRESENCE_NORMAL)) return tmpnode;
	//
	foundladderface = false;
	foundgroundface = false;
	lowestpoint[2] = 99999;
	//
	for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
	{
		//side of the face the area is on
		side1 = face1->frontarea != tmparea;
		//if the face is a ladder face
		if (face1->faceflags & FACE_LADDER)
		{
			plane = &mapplanes[face1->planenum];
			//the ladder face plane should be pretty much vertical
			if (FUNC4(plane->normal, normal) > -0.1)
			{
				foundladderface = true;
				//find lowest point
				for (i = 0; i < face1->winding->numpoints; i++)
				{
					if (face1->winding->p[i][2] < lowestpoint[2])
					{
						FUNC7(face1->winding->p[i], lowestpoint);
					} //end if
				} //end for
			} //end if
		} //end if
		else if (face1->faceflags & FACE_GROUND)
		{
			foundgroundface = true;
		} //end else if
	} //end for
	//
	if ((!foundladderface) || (!foundgroundface)) return tmpnode;
	//
	for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
	{
		//side of the face the area is on
		side1 = face1->frontarea != tmparea;
		//if the face isn't a ground face
		if (!(face1->faceflags & FACE_GROUND)) continue;
		//the ground plane
		plane = &mapplanes[face1->planenum];
		//get the difference between the ground plane and the lowest point
		dist = FUNC4(plane->normal, lowestpoint) - plane->dist;
		//if the lowest point is very near one of the ground planes
		if (dist > -1 && dist < 1)
		{
			return tmpnode;
		} //end if
	} //end for
	//
	dist = FUNC4(normal, lowestpoint);
	planenum = FUNC5(normal, dist);
	//
	w = FUNC3(tmparea, planenum);
	if (!w) return tmpnode;
	FUNC6(w);
	//split the area with a horizontal plane through the lowest point
	FUNC8("\r%6d", ++numladdersubdivisions);
	//
	FUNC2(tmparea, planenum, &frontarea, &backarea);
	//
	tmpnode->tmparea = NULL;
	tmpnode->planenum = planenum;
	//
	tmpnode1 = FUNC0();
	tmpnode1->planenum = 0;
	tmpnode1->tmparea = frontarea;
	//
	tmpnode2 = FUNC0();
	tmpnode2->planenum = 0;
	tmpnode2->tmparea = backarea;
	//subdivide the areas created by splitting recursively
	tmpnode->children[0] = FUNC9(tmpnode1);
	tmpnode->children[1] = FUNC9(tmpnode2);
	//refresh the tree
	FUNC1(tmpaasworld.nodes, tmparea, tmpnode1, tmpnode2, planenum);
	//
	return tmpnode;
}