#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_12__ {int numVerts; TYPE_1__* v; } ;
typedef  TYPE_2__ traceWinding_t ;
struct TYPE_13__ {int type; int* children; float* mins; float* maxs; int numItems; size_t* items; float* plane; int maxItems; } ;
typedef  TYPE_3__ traceNode_t ;
struct TYPE_11__ {scalar_t__* xyz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,float*,float*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,float*,TYPE_2__*,TYPE_2__*) ; 
 int MAX_NODE_TRIANGLES ; 
 int MAX_TRACE_DEPTH ; 
 scalar_t__ MIN_NODE_SIZE ; 
 int PLANE_X ; 
 int PLANE_Y ; 
 int PLANE_Z ; 
 int /*<<< orphan*/  FUNC6 (double*) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,scalar_t__*) ; 
 size_t deadWinding ; 
 float FUNC8 (float) ; 
 int /*<<< orphan*/  FUNC9 (size_t*) ; 
 int maxTraceDepth ; 
 int /*<<< orphan*/  numTraceLeafNodes ; 
 int numTraceNodes ; 
 void* FUNC10 (int) ; 
 TYPE_3__* traceNodes ; 
 TYPE_2__* traceWindings ; 

__attribute__((used)) static void FUNC11( int nodeNum, int depth ){
	int i, j, count, num, frontNum, backNum, type;
	vec3_t size;
	float dist;
	double average[ 3 ];
	traceNode_t     *node, *frontNode, *backNode;
	traceWinding_t  *tw, front, back;


	/* dummy check */
	if ( nodeNum < 0 || nodeNum >= numTraceNodes ) {
		return;
	}

	/* get node */
	node = &traceNodes[ nodeNum ];

	/* runaway recursion check */
	if ( depth >= MAX_TRACE_DEPTH ) {
		//%	Sys_Printf( "Depth: (%d items)\n", node->numItems );
		numTraceLeafNodes++;
		return;
	}
	depth++;

	/* is this a decision node? */
	if ( node->type >= 0 ) {
		/* subdivide children */
		frontNum = node->children[ 0 ];
		backNum = node->children[ 1 ];
		FUNC11( frontNum, depth );
		FUNC11( backNum, depth );
		return;
	}

	/* bound the node */
	FUNC4( node->mins, node->maxs );
	FUNC6( average );
	count = 0;
	for ( i = 0; i < node->numItems; i++ )
	{
		/* get winding */
		tw = &traceWindings[ node->items[ i ] ];

		/* walk its verts */
		for ( j = 0; j < tw->numVerts; j++ )
		{
			FUNC1( tw->v[ j ].xyz, node->mins, node->maxs );
			average[ 0 ] += tw->v[ j ].xyz[ 0 ];
			average[ 1 ] += tw->v[ j ].xyz[ 1 ];
			average[ 2 ] += tw->v[ j ].xyz[ 2 ];
			count++;
		}
	}

	/* check triangle limit */
	//%	if( node->numItems <= MAX_NODE_ITEMS )
	if ( ( count - ( node->numItems * 2 ) ) < MAX_NODE_TRIANGLES ) {
		//%	Sys_Printf( "Limit: (%d triangles)\n", (count - (node->numItems * 2)) );
		numTraceLeafNodes++;
		return;
	}

	/* the largest dimension of the bounding box will be the split axis */
	FUNC7( node->maxs, node->mins, size );
	if ( size[ 0 ] >= size[ 1 ] && size[ 0 ] >= size[ 2 ] ) {
		type = PLANE_X;
	}
	else if ( size[ 1 ] >= size[ 0 ] && size[ 1 ] >= size[ 2 ] ) {
		type = PLANE_Y;
	}
	else{
		type = PLANE_Z;
	}

	/* don't split small nodes */
	if ( size[ type ] <= MIN_NODE_SIZE ) {
		//%	Sys_Printf( "Limit: %f %f %f (%d items)\n", size[ 0 ], size[ 1 ], size[ 2 ], node->numItems );
		numTraceLeafNodes++;
		return;
	}

	/* set max trace depth */
	if ( depth > maxTraceDepth ) {
		maxTraceDepth = depth;
	}

	/* snap the average */
	dist = FUNC8( average[ type ] / count );

	/* dummy check it */
	if ( dist <= node->mins[ type ] || dist >= node->maxs[ type ] ) {
		dist = FUNC8( 0.5f * ( node->mins[ type ] + node->maxs[ type ] ) );
	}

	/* allocate child nodes */
	frontNum = FUNC3();
	backNum = FUNC3();

	/* reset pointers */
	node = &traceNodes[ nodeNum ];
	frontNode = &traceNodes[ frontNum ];
	backNode = &traceNodes[ backNum ];

	/* attach children */
	node->type = type;
	node->plane[ type ] = 1.0f;
	node->plane[ 3 ] = dist;
	node->children[ 0 ] = frontNum;
	node->children[ 1 ] = backNum;

	/* setup front node */
	frontNode->maxItems = ( node->maxItems >> 1 );
	frontNode->items = FUNC10( frontNode->maxItems * sizeof( *frontNode->items ) );

	/* setup back node */
	backNode->maxItems = ( node->maxItems >> 1 );
	backNode->items = FUNC10( backNode->maxItems * sizeof( *backNode->items ) );

	/* filter windings into child nodes */
	for ( i = 0; i < node->numItems; i++ )
	{
		/* get winding */
		tw = &traceWindings[ node->items[ i ] ];

		/* clip the winding by the new split plane */
		FUNC5( tw, node->plane, &front, &back );

		/* kill the existing winding */
		if ( front.numVerts >= 3 || back.numVerts >= 3 ) {
			deadWinding = node->items[ i ];
		}

		/* add front winding */
		if ( front.numVerts >= 3 ) {
			num = FUNC2( &front );
			FUNC0( frontNode, num );
		}

		/* add back winding */
		if ( back.numVerts >= 3 ) {
			num = FUNC2( &back );
			FUNC0( backNode, num );
		}
	}

	/* free original node winding list */
	node->numItems = 0;
	node->maxItems = 0;
	FUNC9( node->items );
	node->items = NULL;

	/* check children */
	if ( frontNode->numItems <= 0 ) {
		frontNode->maxItems = 0;
		FUNC9( frontNode->items );
		frontNode->items = NULL;
	}

	if ( backNode->numItems <= 0 ) {
		backNode->maxItems = 0;
		FUNC9( backNode->items );
		backNode->items = NULL;
	}

	/* subdivide children */
	FUNC11( frontNum, depth );
	FUNC11( backNum, depth );
}