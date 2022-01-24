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
struct TYPE_6__ {struct TYPE_6__** next; TYPE_2__** nodes; } ;
typedef  TYPE_1__ portal_t ;
struct TYPE_7__ {scalar_t__ planenum; int cluster; int contents; TYPE_1__* portals; struct TYPE_7__** children; int /*<<< orphan*/  detail_seperator; } ;
typedef  TYPE_2__ node_t ;

/* Variables and functions */
 int CONTENTS_SOLID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ PLANENUM_LEAF ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  num_visclusters ; 
 int /*<<< orphan*/  num_visportals ; 

void FUNC2 (node_t *node)
{
	portal_t	*p;

	if (node->planenum != PLANENUM_LEAF && !node->detail_seperator)
	{	// decision node
		node->cluster = -99;
		FUNC2 (node->children[0]);
		FUNC2 (node->children[1]);
		return;
	}
	
	// either a leaf or a detail cluster

	if ( node->contents & CONTENTS_SOLID )
	{	// solid block, viewpoint never inside
		node->cluster = -1;
		return;
	}

	FUNC0 (node, num_visclusters);
	num_visclusters++;

	// count the portals
	for (p = node->portals ; p ; )
	{
		if (p->nodes[0] == node)		// only write out from first leaf
		{
			if (FUNC1 (p))
				num_visportals++;
			p = p->next[0];
		}
		else
			p = p->next[1];		
	}

}