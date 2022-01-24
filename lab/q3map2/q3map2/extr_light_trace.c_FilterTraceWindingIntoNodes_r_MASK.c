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
typedef  scalar_t__* vec4_t ;
struct TYPE_12__ {int numVerts; int /*<<< orphan*/  plane; TYPE_1__* v; } ;
typedef  TYPE_2__ traceWinding_t ;
struct TYPE_13__ {scalar_t__ type; int* children; int /*<<< orphan*/  plane; } ;
typedef  TYPE_3__ traceNode_t ;
struct TYPE_11__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__*,TYPE_2__*,TYPE_2__*) ; 
 float FUNC3 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 float FUNC8 (scalar_t__) ; 
 int headNodeNum ; 
 int numTraceNodes ; 
 TYPE_3__* traceNodes ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC9( traceWinding_t *tw, int nodeNum ){
	int num;
	vec4_t plane1, plane2, reverse;
	traceNode_t     *node;
	traceWinding_t front, back;


	/* don't filter if passed a bogus node (solid, etc) */
	if ( nodeNum < 0 || nodeNum >= numTraceNodes ) {
		return;
	}

	/* get node */
	node = &traceNodes[ nodeNum ];

	/* is this a decision node? */
	if ( node->type >= 0 ) {
		/* create winding plane if necessary, filtering out bogus windings as well */
		if ( nodeNum == headNodeNum ) {
			if ( !FUNC5( tw->plane, tw->v[ 0 ].xyz, tw->v[ 1 ].xyz, tw->v[ 2 ].xyz ) ) {
				return;
			}
		}

		/* validate the node */
		if ( node->children[ 0 ] == 0 || node->children[ 1 ] == 0 ) {
			FUNC4( "Invalid tracenode: %d", nodeNum );
		}

		/* get node plane */
		FUNC6( node->plane, plane1 );

		/* get winding plane */
		FUNC6( tw->plane, plane2 );

		/* invert surface plane */
		FUNC7( vec3_origin, plane2, reverse );
		reverse[ 3 ] = -plane2[ 3 ];

		/* front only */
		if ( FUNC3( plane1, plane2 ) > 0.999f && FUNC8( plane1[ 3 ] - plane2[ 3 ] ) < 0.001f ) {
			FUNC9( tw, node->children[ 0 ] );
			return;
		}

		/* back only */
		if ( FUNC3( plane1, reverse ) > 0.999f && FUNC8( plane1[ 3 ] - reverse[ 3 ] ) < 0.001f ) {
			FUNC9( tw, node->children[ 1 ] );
			return;
		}

		/* clip the winding by node plane */
		FUNC2( tw, plane1, &front, &back );

		/* filter by node plane */
		if ( front.numVerts >= 3 ) {
			FUNC9( &front, node->children[ 0 ] );
		}
		if ( back.numVerts >= 3 ) {
			FUNC9( &back, node->children[ 1 ] );
		}

		/* return to caller */
		return;
	}

	/* add winding to leaf node */
	num = FUNC1( tw );
	FUNC0( node, num );
}