#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int member_0; int member_1; int member_2; } ;
typedef  TYPE_2__ vec3_t ;
struct TYPE_18__ {scalar_t__ numVerts; scalar_t__* mins; scalar_t__* maxs; int type; TYPE_1__* shaderInfo; } ;
typedef  TYPE_3__ mapDrawSurface_t ;
struct TYPE_19__ {int firstDrawSurf; int /*<<< orphan*/  origin; } ;
typedef  TYPE_4__ entity_t ;
struct TYPE_20__ {scalar_t__* center; scalar_t__ radius; } ;
typedef  TYPE_5__ decalProjector_t ;
struct TYPE_16__ {int compileFlags; scalar_t__ autosprite; } ;

/* Variables and functions */
 int C_NOMARKS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_3__*) ; 
#define  SURFACE_FACE 132 
#define  SURFACE_FORCED_META 131 
#define  SURFACE_META 130 
#define  SURFACE_PATCH 129 
#define  SURFACE_TRIANGLES 128 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entityOrigin ; 
 TYPE_3__* mapDrawSurfs ; 
 int numDecalSurfaces ; 
 int numMapDrawSurfs ; 
 int numProjectors ; 
 int /*<<< orphan*/ * projectors ; 

void FUNC8( entity_t *e ){
	int i, j, k, f, fOld, start;
	decalProjector_t dp;
	mapDrawSurface_t    *ds;
	vec3_t identityAxis[ 3 ] = { { 1, 0, 0 }, { 0, 1, 0 }, { 0, 0, 1 } };


	/* note it */
	FUNC4( SYS_VRB, "--- MakeEntityDecals ---\n" );

	/* set entity origin */
	FUNC7( e->origin, entityOrigin );

	/* transform projector instead of geometry */
	FUNC6( entityOrigin );

	/* init pacifier */
	fOld = -1;
	start = FUNC0();

	/* walk the list of decal projectors */
	for ( i = 0; i < numProjectors; i++ )
	{
		/* print pacifier */
		f = 10 * i / numProjectors;
		if ( f != fOld ) {
			fOld = f;
			FUNC4( SYS_VRB, "%d...", f );
		}

		/* get projector */
		FUNC5( &projectors[ i ], identityAxis, e->origin, &dp );

		/* walk the list of surfaces in the entity */
		for ( j = e->firstDrawSurf; j < numMapDrawSurfs; j++ )
		{
			/* get surface */
			ds = &mapDrawSurfs[ j ];
			if ( ds->numVerts <= 0 ) {
				continue;
			}

			/* ignore autosprite or nomarks */
			if ( ds->shaderInfo->autosprite || ( ds->shaderInfo->compileFlags & C_NOMARKS ) ) {
				continue;
			}

			/* bounds check */
			for ( k = 0; k < 3; k++ )
				if ( ds->mins[ k ] >= ( dp.center[ k ] + dp.radius ) ||
					 ds->maxs[ k ] <= ( dp.center[ k ] - dp.radius ) ) {
					break;
				}
			if ( k < 3 ) {
				continue;
			}

			/* switch on type */
			switch ( ds->type )
			{
			case SURFACE_FACE:
				FUNC1( &dp, ds );
				break;

			case SURFACE_PATCH:
				FUNC2( &dp, ds );
				break;

			case SURFACE_TRIANGLES:
			case SURFACE_FORCED_META:
			case SURFACE_META:
				FUNC3( &dp, ds );
				break;

			default:
				break;
			}
		}
	}

	/* print time */
	FUNC4( SYS_VRB, " (%d)\n", (int) ( FUNC0() - start ) );

	/* emit some stats */
	FUNC4( SYS_VRB, "%9d decal surfaces\n", numDecalSurfaces );
}