#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int qboolean ;
struct TYPE_6__ {scalar_t__ dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_1__ plane_t ;
struct TYPE_7__ {size_t planenum; int contents; int /*<<< orphan*/ * occupant; scalar_t__ occupied; struct TYPE_7__** children; } ;
typedef  TYPE_2__ node_t ;
typedef  int /*<<< orphan*/  entity_t ;

/* Variables and functions */
 int CONTENTS_SOLID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 size_t PLANENUM_LEAF ; 
 TYPE_1__* mapplanes ; 
 size_t nummapplanes ; 
 scalar_t__ numrec ; 

qboolean FUNC3 (node_t *headnode, vec3_t origin, entity_t *occupant)
{
	node_t *node;
	vec_t	d;
	plane_t *plane;

	//find the leaf to start in
	node = headnode;
	while(node->planenum != PLANENUM_LEAF)
	{
		if (node->planenum < 0 || node->planenum > nummapplanes)
		{
			FUNC1("PlaceOccupant: invalid node->planenum\n");
		} //end if
		plane = &mapplanes[node->planenum];
		d = FUNC0(origin, plane->normal) - plane->dist;
		if (d >= 0) node = node->children[0];
		else node = node->children[1];
		if (!node)
		{
			FUNC1("PlaceOccupant: invalid child %d\n", d < 0);
		} //end if
	} //end while
	//don't start in solid
//	if (node->contents == CONTENTS_SOLID)
	//ME: replaced because in LeafNode in brushbsp.c
	//    some nodes have contents solid with other contents
	if (node->contents & CONTENTS_SOLID) return false;
	//if the node is already occupied
	if (node->occupied) return false;

	//place the occupant in the first leaf
	node->occupant = occupant;

	numrec = 0;
//	Log_Print("%6d recurses", numrec);
//	FloodPortals_r(node, 1);
//	Log_Print("\n");
	FUNC2(node);

	return true;
}