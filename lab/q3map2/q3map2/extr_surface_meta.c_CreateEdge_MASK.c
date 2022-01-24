#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_3__ {void** edge; int kingpin; void* kingpinLength; void** plane; void* length; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ edge_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**,void**) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC5 (void*) ; 

void FUNC6( vec4_t plane, vec3_t a, vec3_t b, edge_t *edge ){
	/* copy edge origin */
	FUNC2( a, edge->origin );

	/* create vector aligned with winding direction of edge */
	FUNC4( b, a, edge->edge );

	if ( FUNC5( edge->edge[ 0 ] ) > FUNC5( edge->edge[ 1 ] ) && FUNC5( edge->edge[ 0 ] ) > FUNC5( edge->edge[ 2 ] ) ) {
		edge->kingpin = 0;
	}
	else if ( FUNC5( edge->edge[ 1 ] ) > FUNC5( edge->edge[ 0 ] ) && FUNC5( edge->edge[ 1 ] ) > FUNC5( edge->edge[ 2 ] ) ) {
		edge->kingpin = 1;
	}
	else{
		edge->kingpin = 2;
	}
	edge->kingpinLength = edge->edge[ edge->kingpin ];

	FUNC3( edge->edge, edge->edge );
	edge->edge[ 3 ] = FUNC1( a, edge->edge );
	edge->length = FUNC1( b, edge->edge ) - edge->edge[ 3 ];

	/* create perpendicular plane that edge lies in */
	FUNC0( plane, edge->edge, edge->plane );
	edge->plane[ 3 ] = FUNC1( a, edge->plane );
}