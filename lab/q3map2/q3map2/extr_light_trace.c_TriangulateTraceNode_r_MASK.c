#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tt ;
struct TYPE_10__ {int numVerts; TYPE_1__* v; int /*<<< orphan*/  infoNum; } ;
typedef  TYPE_2__ traceWinding_t ;
struct TYPE_11__ {int /*<<< orphan*/  edge2; TYPE_1__* v; int /*<<< orphan*/  edge1; int /*<<< orphan*/  infoNum; } ;
typedef  TYPE_3__ traceTriangle_t ;
struct TYPE_12__ {scalar_t__ type; int* children; int numItems; int maxItems; int* items; } ;
typedef  TYPE_4__ traceNode_t ;
struct TYPE_9__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int numTraceNodes ; 
 int* FUNC4 (int) ; 
 TYPE_4__* traceNodes ; 
 TYPE_2__* traceWindings ; 

__attribute__((used)) static int FUNC5( int nodeNum ){
	int i, j, num, frontNum, backNum, numWindings, *windings;
	traceNode_t     *node;
	traceWinding_t  *tw;
	traceTriangle_t tt;


	/* dummy check */
	if ( nodeNum < 0 || nodeNum >= numTraceNodes ) {
		return 0;
	}

	/* get node */
	node = &traceNodes[ nodeNum ];

	/* is this a decision node? */
	if ( node->type >= 0 ) {
		/* triangulate children */
		frontNum = node->children[ 0 ];
		backNum = node->children[ 1 ];
		node->numItems = FUNC5( frontNum );
		node->numItems += FUNC5( backNum );
		return node->numItems;
	}

	/* empty node? */
	if ( node->numItems == 0 ) {
		node->maxItems = 0;
		if ( node->items != NULL ) {
			FUNC3( node->items );
		}
		return node->numItems;
	}

	/* store off winding data */
	numWindings = node->numItems;
	windings = node->items;

	/* clear it */
	node->numItems = 0;
	node->maxItems = numWindings * 2;
	node->items = FUNC4( node->maxItems * sizeof( tt ) );

	/* walk winding list */
	for ( i = 0; i < numWindings; i++ )
	{
		/* get winding */
		tw = &traceWindings[ windings[ i ] ];

		/* initial setup */
		tt.infoNum = tw->infoNum;
		tt.v[ 0 ] = tw->v[ 0 ];

		/* walk vertex list */
		for ( j = 1; j + 1 < tw->numVerts; j++ )
		{
			/* set verts */
			tt.v[ 1 ] = tw->v[ j ];
			tt.v[ 2 ] = tw->v[ j + 1 ];

			/* find vectors for two edges sharing the first vert */
			FUNC2( tt.v[ 1 ].xyz, tt.v[ 0 ].xyz, tt.edge1 );
			FUNC2( tt.v[ 2 ].xyz, tt.v[ 0 ].xyz, tt.edge2 );

			/* add it to the node */
			num = FUNC1( &tt );
			FUNC0( node, num );
		}
	}

	/* free windings */
	if ( windings != NULL ) {
		FUNC3( windings );
	}

	/* return item count */
	return node->numItems;
}