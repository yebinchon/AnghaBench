#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_10__ {float dist; int /*<<< orphan*/  normal; } ;
struct TYPE_8__ {size_t planenum; int /*<<< orphan*/ * winding; TYPE_2__* onnode; TYPE_3__ plane; TYPE_2__** nodes; struct TYPE_8__** next; } ;
typedef  TYPE_1__ portal_t ;
struct TYPE_9__ {size_t planenum; int /*<<< orphan*/ * children; TYPE_1__* portals; } ;
typedef  TYPE_2__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,float,double) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  c_tinyportals ; 
 TYPE_3__* mapplanes ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC9 (node_t *node)
{
	portal_t	*new_portal, *p;
	winding_t	*w;
	vec3_t		normal;
	float		dist;
	int			side;

	w = FUNC2 (node);

	// clip the portal by all the other portals in the node
	for (p = node->portals; p && w; p = p->next[side])	
	{
		if (p->nodes[0] == node)
		{
			side = 0;
			FUNC6 (p->plane.normal, normal);
			dist = p->plane.dist;
		} //end if
		else if (p->nodes[1] == node)
		{
			side = 1;
			FUNC7 (vec3_origin, p->plane.normal, normal);
			dist = -p->plane.dist;
		} //end else if
		else
		{
			FUNC4 ("MakeNodePortal: mislinked portal");
		} //end else
		FUNC3 (&w, normal, dist, 0.1);
	} //end for

	if (!w)
	{
		return;
	} //end if

	if (FUNC8 (w))
	{
		c_tinyportals++;
		FUNC5(w);
		return;
	} //end if

#ifdef DEBUG
/* //NOTE: don't use this winding ok check
	// all the invalid windings only have a degenerate edge
	if (WindingError(w))
	{
		Log_Print("MakeNodePortal: %s\n", WindingErrorString());
		FreeWinding(w);
		return;
	} //end if*/
#endif //DEBUG


	new_portal = FUNC1();
	new_portal->plane = mapplanes[node->planenum];

#ifdef ME
	new_portal->planenum = node->planenum;
#endif //ME

	new_portal->onnode = node;
	new_portal->winding = w;
	FUNC0 (new_portal, node->children[0], node->children[1]);
}