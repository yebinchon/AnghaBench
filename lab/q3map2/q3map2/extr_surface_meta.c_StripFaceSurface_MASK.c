#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vec_t ;
struct TYPE_8__ {int numVerts; scalar_t__ type; int numIndexes; int /*<<< orphan*/  indexes; TYPE_4__* verts; TYPE_1__* shaderInfo; } ;
typedef  TYPE_2__ mapDrawSurface_t ;
struct TYPE_9__ {scalar_t__* xyz; } ;
struct TYPE_7__ {scalar_t__ autosprite; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int,int,int) ; 
 int MAX_INDEXES ; 
 scalar_t__ SURFACE_DECAL ; 
 scalar_t__ SURFACE_FACE ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  numStripSurfaces ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7( mapDrawSurface_t *ds ){
	int i, r, least, rotate, numIndexes, ni, a, b, c, indexes[ MAX_INDEXES ];
	vec_t       *v1, *v2;


	/* try to early out  */
	if ( !ds->numVerts || ( ds->type != SURFACE_FACE && ds->type != SURFACE_DECAL ) ) {
		return;
	}

	/* is this a simple triangle? */
	if ( ds->numVerts == 3 ) {
		numIndexes = 3;
		FUNC4( indexes, 0, 1, 2 );
	}
	else
	{
		/* ydnar: find smallest coordinate */
		least = 0;
		if ( ds->shaderInfo != NULL && ds->shaderInfo->autosprite == qfalse ) {
			for ( i = 0; i < ds->numVerts; i++ )
			{
				/* get points */
				v1 = ds->verts[ i ].xyz;
				v2 = ds->verts[ least ].xyz;

				/* compare */
				if ( v1[ 0 ] < v2[ 0 ] ||
					 ( v1[ 0 ] == v2[ 0 ] && v1[ 1 ] < v2[ 1 ] ) ||
					 ( v1[ 0 ] == v2[ 0 ] && v1[ 1 ] == v2[ 1 ] && v1[ 2 ] < v2[ 2 ] ) ) {
					least = i;
				}
			}
		}

		/* determine the triangle strip order */
		numIndexes = ( ds->numVerts - 2 ) * 3;
		if ( numIndexes > MAX_INDEXES ) {
			FUNC1( "MAX_INDEXES exceeded for surface (%d > %d) (%d verts)", numIndexes, MAX_INDEXES, ds->numVerts );
		}

		/* try all possible orderings of the points looking for a non-degenerate strip order */
		for ( r = 0; r < ds->numVerts; r++ )
		{
			/* set rotation */
			rotate = ( r + least ) % ds->numVerts;

			/* walk the winding in both directions */
			for ( ni = 0, i = 0; i < ds->numVerts - 2 - i; i++ )
			{
				/* make indexes */
				a = ( ds->numVerts - 1 - i + rotate ) % ds->numVerts;
				b = ( i + rotate ) % ds->numVerts;
				c = ( ds->numVerts - 2 - i + rotate ) % ds->numVerts;

				/* test this triangle */
				if ( ds->numVerts > 4 && FUNC3( ds->verts, a, b, c ) ) {
					break;
				}
				indexes[ ni++ ] = a;
				indexes[ ni++ ] = b;
				indexes[ ni++ ] = c;

				/* handle end case */
				if ( i + 1 != ds->numVerts - 1 - i ) {
					/* make indexes */
					a = ( ds->numVerts - 2 - i + rotate ) % ds->numVerts;
					b = ( i + rotate ) % ds->numVerts;
					c = ( i + 1 + rotate ) % ds->numVerts;

					/* test triangle */
					if ( ds->numVerts > 4 && FUNC3( ds->verts, a, b, c ) ) {
						break;
					}
					indexes[ ni++ ] = a;
					indexes[ ni++ ] = b;
					indexes[ ni++ ] = c;
				}
			}

			/* valid strip? */
			if ( ni == numIndexes ) {
				break;
			}
		}

		/* if any triangle in the strip is degenerate, render from a centered fan point instead */
		if ( ni < numIndexes ) {
			FUNC2( ds );
			return;
		}
	}

	/* copy strip triangle indexes */
	ds->numIndexes = numIndexes;
	ds->indexes = FUNC6( ds->numIndexes * sizeof( int ) );
	FUNC5( ds->indexes, indexes, ds->numIndexes * sizeof( int ) );

	/* add to count */
	numStripSurfaces++;

	/* classify it */
	FUNC0( 1, ds );
}