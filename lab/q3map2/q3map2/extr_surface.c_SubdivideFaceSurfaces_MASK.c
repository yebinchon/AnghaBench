#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
typedef  int /*<<< orphan*/  tree_t ;
struct TYPE_15__ {TYPE_3__* shaderInfo; } ;
typedef  TYPE_2__ side_t ;
struct TYPE_16__ {int compileFlags; float subdivisions; } ;
typedef  TYPE_3__ shaderInfo_t ;
struct TYPE_17__ {scalar_t__ type; float* texRange; float* maxs; float* mins; int fogNum; TYPE_1__* sideRef; int /*<<< orphan*/ * mapBrush; } ;
typedef  TYPE_4__ mapDrawSurface_t ;
struct TYPE_18__ {int firstDrawSurf; } ;
typedef  TYPE_5__ entity_t ;
typedef  int /*<<< orphan*/  brush_t ;
struct TYPE_14__ {TYPE_2__* side; } ;

/* Variables and functions */
 int C_SKY ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ SURFACE_FACE ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*) ; 
 int FUNC6 (float) ; 
 double FUNC7 (float) ; 
 TYPE_4__* mapDrawSurfs ; 
 int numMapDrawSurfs ; 
 scalar_t__ qfalse ; 
 float texRange ; 

void FUNC8( entity_t *e, tree_t *tree ){
	int i, j, numBaseDrawSurfs, fogNum;
	mapDrawSurface_t    *ds;
	brush_t             *brush;
	side_t              *side;
	shaderInfo_t        *si;
	winding_t           *w;
	float range, size, subdivisions, s2;


	/* note it */
	FUNC4( SYS_VRB, "--- SubdivideFaceSurfaces ---\n" );

	/* walk the list of surfaces */
	numBaseDrawSurfs = numMapDrawSurfs;
	for ( i = e->firstDrawSurf; i < numBaseDrawSurfs; i++ )
	{
		/* get surface */
		ds = &mapDrawSurfs[ i ];

		/* only subdivide brush sides */
		if ( ds->type != SURFACE_FACE || ds->mapBrush == NULL || ds->sideRef == NULL || ds->sideRef->side == NULL ) {
			continue;
		}

		/* get bits */
		brush = ds->mapBrush;
		side = ds->sideRef->side;

		/* check subdivision for shader */
		si = side->shaderInfo;
		if ( si == NULL ) {
			continue;
		}

		/* ydnar: don't subdivide sky surfaces */
		if ( si->compileFlags & C_SKY ) {
			continue;
		}

		/* do texture coordinate range check */
		FUNC1( 1, ds );
		if ( FUNC0( ds ) == qfalse ) {
			/* calculate subdivisions texture range (this code is shit) */
			range = ( ds->texRange[ 0 ] > ds->texRange[ 1 ] ? ds->texRange[ 0 ] : ds->texRange[ 1 ] );
			size = ds->maxs[ 0 ] - ds->mins[ 0 ];
			for ( j = 1; j < 3; j++ )
				if ( ( ds->maxs[ j ] - ds->mins[ j ] ) > size ) {
					size = ds->maxs[ j ] - ds->mins[ j ];
				}
			subdivisions = ( size / range ) * texRange;
			subdivisions = FUNC6( subdivisions / 2 ) * 2;
			for ( j = 1; j < 8; j++ )
			{
				s2 = FUNC6( (float) texRange / j );
				if ( FUNC7( subdivisions - s2 ) <= 4.0 ) {
					subdivisions = s2;
					break;
				}
			}
		}
		else{
			subdivisions = si->subdivisions;
		}

		/* get subdivisions from shader */
		if ( si->subdivisions > 0 && si->subdivisions < subdivisions ) {
			subdivisions = si->subdivisions;
		}
		if ( subdivisions < 1.0f ) {
			continue;
		}

		/* preserve fog num */
		fogNum = ds->fogNum;

		/* make a winding and free the surface */
		w = FUNC5( ds );
		FUNC2( ds );

		/* subdivide it */
		FUNC3( e, brush, side, w, fogNum, subdivisions );
	}
}