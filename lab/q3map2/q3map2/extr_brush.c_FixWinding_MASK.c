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
struct TYPE_3__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 float DEGENERATE_EPSILON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC4( winding_t *w ){
	qboolean valid = qtrue;
	int i, j, k;
	vec3_t vec;
	float dist;


	/* dummy check */
	if ( !w ) {
		return qfalse;
	}

	/* check all verts */
	for ( i = 0; i < w->numpoints; i++ )
	{
		/* don't remove points if winding is a triangle */
		if ( w->numpoints == 3 ) {
			return valid;
		}

		/* get second point index */
		j = ( i + 1 ) % w->numpoints;

		/* degenerate edge? */
		FUNC3( w->p[ i ], w->p[ j ], vec );
		dist = FUNC2( vec );
		if ( dist < DEGENERATE_EPSILON ) {
			valid = qfalse;
			//Sys_FPrintf( SYS_VRB, "WARNING: Degenerate winding edge found, fixing...\n" );

			/* create an average point (ydnar 2002-01-26: using nearest-integer weld preference) */
			FUNC0( w->p[ i ], w->p[ j ], vec );
			FUNC1( vec, w->p[ i ] );
			//VectorAdd( w->p[ i ], w->p[ j ], vec );
			//VectorScale( vec, 0.5, w->p[ i ] );

			/* move the remaining verts */
			for ( k = i + 2; k < w->numpoints; k++ )
			{
				FUNC1( w->p[ k ], w->p[ k - 1 ] );
			}
			w->numpoints--;
		}
	}

	/* one last check and return */
	if ( w->numpoints < 3 ) {
		valid = qfalse;
	}
	return valid;
}