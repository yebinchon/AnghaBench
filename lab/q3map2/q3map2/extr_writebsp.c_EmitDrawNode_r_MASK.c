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
struct TYPE_6__ {scalar_t__ planenum; struct TYPE_6__** children; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_1__ node_t ;
struct TYPE_7__ {int planeNum; int* children; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_2__ bspNode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t MAX_MAP_NODES ; 
 scalar_t__ PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* bspNodes ; 
 int numBSPLeafs ; 
 size_t numBSPNodes ; 

int FUNC3( node_t *node ){
	bspNode_t   *n;
	int i;


	/* check for leafnode */
	if ( node->planenum == PLANENUM_LEAF ) {
		FUNC0( node );
		return -numBSPLeafs;
	}

	/* emit a node */
	if ( numBSPNodes == MAX_MAP_NODES ) {
		FUNC1( "MAX_MAP_NODES" );
	}
	n = &bspNodes[ numBSPNodes ];
	numBSPNodes++;

	FUNC2( node->mins, n->mins );
	FUNC2( node->maxs, n->maxs );

	if ( node->planenum & 1 ) {
		FUNC1( "WriteDrawNodes_r: odd planenum" );
	}
	n->planeNum = node->planenum;

	//
	// recursively output the other nodes
	//
	for ( i = 0 ; i < 2 ; i++ )
	{
		if ( node->children[i]->planenum == PLANENUM_LEAF ) {
			n->children[i] = -( numBSPLeafs + 1 );
			FUNC0( node->children[i] );
		}
		else
		{
			n->children[i] = numBSPNodes;
			FUNC3( node->children[i] );
		}
	}

	return n - bspNodes;
}