#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_14__ {TYPE_4__* headnode; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_3__ tree_t ;
struct TYPE_15__ {TYPE_5__* brushlist; int /*<<< orphan*/  volume; } ;
typedef  TYPE_4__ node_t ;
struct TYPE_16__ {int numsides; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; TYPE_2__* sides; TYPE_1__* original; struct TYPE_16__* next; } ;
typedef  TYPE_5__ bspbrush_t ;
struct TYPE_13__ {int flags; scalar_t__ texinfo; int /*<<< orphan*/  winding; } ;
struct TYPE_12__ {int /*<<< orphan*/  brushnum; int /*<<< orphan*/  entitynum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int SFL_BEVEL ; 
 int SFL_VISIBLE ; 
 scalar_t__ TEXINFO_NODE ; 
 TYPE_3__* FUNC7 () ; 
 int c_active_brushes ; 
 scalar_t__ c_brushmemory ; 
 scalar_t__ c_nodememory ; 
 scalar_t__ c_nodes ; 
 scalar_t__ c_nonvis ; 
 scalar_t__ c_peak_brushmemory ; 
 int c_peak_totalbspmemory ; 
 int c_totalsides ; 
 scalar_t__ cancelconversion ; 
 scalar_t__ microvolume ; 
 scalar_t__ numrecurse ; 
 int numthreads ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

tree_t *FUNC9(bspbrush_t *brushlist, vec3_t mins, vec3_t maxs)
{
	int i, c_faces, c_nonvisfaces, c_brushes;
	bspbrush_t *b;
	node_t *node;
	tree_t *tree;
	vec_t volume;
//	vec3_t point;

	FUNC5("-------- Brush BSP ---------\n");

	tree = FUNC7();

	c_faces = 0;
	c_nonvisfaces = 0;
	c_brushes = 0;
	c_totalsides = 0;
	for (b = brushlist; b; b = b->next)
	{
		c_brushes++;

		volume = FUNC3(b);
		if (volume < microvolume)
		{
			FUNC5("WARNING: entity %i, brush %i: microbrush\n",
				b->original->entitynum, b->original->brushnum);
		} //end if

		for (i=0 ; i<b->numsides ; i++)
		{
			if (b->sides[i].flags & SFL_BEVEL)
				continue;
			if (!b->sides[i].winding)
				continue;
			if (b->sides[i].texinfo == TEXINFO_NODE)
				continue;
			if (b->sides[i].flags & SFL_VISIBLE)
			{
				c_faces++;
			} //end if
			else
			{
				c_nonvisfaces++;
				//if (create_aas) b->sides[i].texinfo = TEXINFO_NODE;
			} //end if
		} //end for
		c_totalsides += b->numsides;

		FUNC0 (b->mins, tree->mins, tree->maxs);
		FUNC0 (b->maxs, tree->mins, tree->maxs);
	} //end for

	FUNC5("%6i brushes\n", c_brushes);
	FUNC5("%6i visible faces\n", c_faces);
	FUNC5("%6i nonvisible faces\n", c_nonvisfaces);
	FUNC5("%6i total sides\n", c_totalsides);

	c_active_brushes = c_brushes;
	c_nodememory = 0;
	c_brushmemory = 0;
	c_peak_brushmemory = 0;

	c_nodes = 0;
	c_nonvis = 0;
	node = FUNC1 ();

	//volume of first node (head node)
	node->volume = FUNC2 (mins, maxs);
	//
	tree->headnode = node;
	//just get some statistics and the mins/maxs of the node
	numrecurse = 0;
//	qprintf("%6d splits", numrecurse);

	tree->headnode->brushlist = brushlist;
	FUNC4(tree);

	//build the bsp tree with the start node from the brushlist
//	node = BuildTree_r(node, brushlist);

	//if the conversion is cancelled
	if (cancelconversion) return tree;

	FUNC8("\n");
	FUNC6("%6d splits\r\n", numrecurse);
//	Log_Print("%6i visible nodes\n", c_nodes/2 - c_nonvis);
//	Log_Print("%6i nonvis nodes\n", c_nonvis);
//	Log_Print("%6i leaves\n", (c_nodes+1)/2);
//	Log_Print("%6i solid leaf nodes\n", c_solidleafnodes);
//	Log_Print("%6i active brushes\n", c_active_brushes);
	if (numthreads == 1)
	{
//		Log_Print("%6i KB of node memory\n", c_nodememory >> 10);
//		Log_Print("%6i KB of brush memory\n", c_brushmemory >> 10);
//		Log_Print("%6i KB of peak brush memory\n", c_peak_brushmemory >> 10);
//		Log_Print("%6i KB of winding memory\n", WindingMemory() >> 10);
//		Log_Print("%6i KB of peak winding memory\n", WindingPeakMemory() >> 10);
		FUNC5("%6i KB of peak total bsp memory\n", c_peak_totalbspmemory >> 10);
	} //end if

	/*
	point[0] = 1485;
	point[1] = 956.125;
	point[2] = 352.125;
	node = PointInLeaf(tree->headnode, point);
	if (node->planenum != PLANENUM_LEAF)
	{
		Log_Print("node not a leaf\n");
	} //end if
	Log_Print("at %f %f %f:\n", point[0], point[1], point[2]);
	PrintContents(node->contents);
	Log_Print("node->expansionbboxes = %d\n", node->expansionbboxes);
	//*/
	return tree;
}