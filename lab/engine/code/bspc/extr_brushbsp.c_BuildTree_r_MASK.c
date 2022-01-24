#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int planenum; } ;
typedef  TYPE_1__ side_t ;
struct TYPE_12__ {int planenum; int contents; struct TYPE_12__** children; int /*<<< orphan*/ * volume; struct TYPE_12__* parent; TYPE_1__* side; int /*<<< orphan*/ * brushlist; } ;
typedef  TYPE_2__ node_t ;
typedef  int /*<<< orphan*/  bspbrush_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int CONTENTS_SOLID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC8 () ; 
 int c_brushmemory ; 
 int c_nodememory ; 
 int /*<<< orphan*/  c_nodes ; 
 int c_peak_totalbspmemory ; 
 int /*<<< orphan*/  c_solidleafnodes ; 
 scalar_t__ create_aas ; 
 scalar_t__ drawflag ; 
 int /*<<< orphan*/  numrecurse ; 
 int numthreads ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

node_t *FUNC10 (node_t *node, bspbrush_t *brushes)
{
	node_t		*newnode;
	side_t		*bestside;
	int			i, totalmem;
	bspbrush_t	*children[2];

	FUNC9("\r%6d", numrecurse);
	numrecurse++;

	if (numthreads == 1)
	{
		totalmem = FUNC8() + c_nodememory + c_brushmemory;
		if (totalmem > c_peak_totalbspmemory)
			c_peak_totalbspmemory = totalmem;
		c_nodes++;
	} //endif

	if (drawflag)
		FUNC1(brushes, node);

	// find the best plane to use as a splitter
	bestside = FUNC5 (brushes, node);
	if (!bestside)
	{
		// leaf node
		node->side = NULL;
		node->planenum = -1;
		FUNC4(node, brushes);
		if (node->contents & CONTENTS_SOLID) c_solidleafnodes++;
		if (create_aas)
		{
			//free up memory!!!
			FUNC3(node->brushlist);
			node->brushlist = NULL;
			//free the node volume brush
			if (node->volume)
			{
				FUNC2(node->volume);
				node->volume = NULL;
			} //end if
		} //end if
		return node;
	} //end if

	// this is a splitplane node
	node->side = bestside;
	node->planenum = bestside->planenum & ~1;	// always use front facing

	//split the brush list in two for both children
	FUNC7 (brushes, node, &children[0], &children[1]);
	//free the old brush list
	FUNC3 (brushes);

	// allocate children before recursing
	for (i = 0; i < 2; i++)
	{
		newnode = FUNC0 ();
		newnode->parent = node;
		node->children[i] = newnode;
	} //end for

	//split the volume brush of the node for the children
	FUNC6 (node->volume, node->planenum, &node->children[0]->volume,
		&node->children[1]->volume);

	if (create_aas)
	{
		//free the volume brush
		if (node->volume)
		{
			FUNC2(node->volume);
			node->volume = NULL;
		} //end if
	} //end if
	// recursively process children
	for (i = 0; i < 2; i++)
	{
		node->children[i] = FUNC10(node->children[i], children[i]);
	} //end for

	return node;
}