#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
struct TYPE_12__ {int /*<<< orphan*/ * winding; TYPE_3__** nodes; struct TYPE_12__** next; } ;
typedef  TYPE_1__ portal_t ;
struct TYPE_13__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_14__ {size_t planenum; TYPE_1__* portals; struct TYPE_14__** children; } ;
typedef  TYPE_3__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  SPLIT_WINDING_EPSILON ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  c_tinyportals ; 
 TYPE_2__* mapplanes ; 

void FUNC7 (node_t *node)
{
	portal_t	*p, *next_portal, *new_portal;
	node_t *f, *b, *other_node;
	int side;
	plane_t *plane;
	winding_t *frontwinding, *backwinding;

	plane = &mapplanes[node->planenum];
	f = node->children[0];
	b = node->children[1];

	for (p = node->portals ; p ; p = next_portal)	
	{
		if (p->nodes[0] == node) side = 0;
		else if (p->nodes[1] == node) side = 1;
		else FUNC3 ("SplitNodePortals: mislinked portal");
		next_portal = p->next[side];

		other_node = p->nodes[!side];
		FUNC5 (p, p->nodes[0]);
		FUNC5 (p, p->nodes[1]);

//
// cut the portal into two portals, one on each side of the cut plane
//
		FUNC2 (p->winding, plane->normal, plane->dist,
				SPLIT_WINDING_EPSILON, &frontwinding, &backwinding);

		if (frontwinding && FUNC6(frontwinding))
		{
			FUNC4 (frontwinding);
			frontwinding = NULL;
			c_tinyportals++;
		} //end if

		if (backwinding && FUNC6(backwinding))
		{
			FUNC4 (backwinding);
			backwinding = NULL;
			c_tinyportals++;
		} //end if

#ifdef DEBUG
/* 	//NOTE: don't use this winding ok check
		// all the invalid windings only have a degenerate edge
		if (frontwinding && WindingError(frontwinding))
		{
			Log_Print("SplitNodePortals: front %s\n", WindingErrorString());
			FreeWinding(frontwinding);
			frontwinding = NULL;
		} //end if
		if (backwinding && WindingError(backwinding))
		{
			Log_Print("SplitNodePortals: back %s\n", WindingErrorString());
			FreeWinding(backwinding);
			backwinding = NULL;
		} //end if*/
#endif //DEBUG

		if (!frontwinding && !backwinding)
		{	// tiny windings on both sides
			continue;
		}

		if (!frontwinding)
		{
			FUNC4 (backwinding);
			if (side == 0) FUNC0 (p, b, other_node);
			else FUNC0 (p, other_node, b);
			continue;
		}
		if (!backwinding)
		{
			FUNC4 (frontwinding);
			if (side == 0) FUNC0 (p, f, other_node);
			else FUNC0 (p, other_node, f);
			continue;
		}
		
	// the winding is split
		new_portal = FUNC1();
		*new_portal = *p;
		new_portal->winding = backwinding;
		FUNC4 (p->winding);
		p->winding = frontwinding;

		if (side == 0)
		{
			FUNC0 (p, f, other_node);
			FUNC0 (new_portal, b, other_node);
		} //end if
		else
		{
			FUNC0 (p, other_node, f);
			FUNC0 (new_portal, other_node, b);
		} //end else
	}

	node->portals = NULL;
}