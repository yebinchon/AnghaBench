#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
struct TYPE_21__ {int /*<<< orphan*/  patchIterations; } ;
typedef  TYPE_1__ surfaceInfo_t ;
typedef  int /*<<< orphan*/  shaderInfo_t ;
typedef  int /*<<< orphan*/  rawLightmap_t ;
struct TYPE_22__ {int numVerts; TYPE_4__* verts; } ;
typedef  TYPE_2__ radWinding_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_23__ {int width; int height; TYPE_4__* verts; } ;
typedef  TYPE_3__ mesh_t ;
typedef  int /*<<< orphan*/  clipWork_t ;
struct TYPE_24__ {int** color; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_4__ bspDrawVert_t ;
struct TYPE_25__ {int numVerts; size_t firstVert; int patchWidth; int patchHeight; } ;
typedef  TYPE_5__ bspDrawSurface_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int MAX_LIGHTMAPS ; 
 scalar_t__ PLANAR_EPSILON ; 
 scalar_t__ FUNC2 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 float* FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float*,size_t*) ; 
 TYPE_5__* bspDrawSurfaces ; 
 scalar_t__ FUNC9 (float) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_4__*,int) ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_4__* FUNC12 (int) ; 
 TYPE_1__* surfaceInfos ; 
 TYPE_4__* yDrawVerts ; 

void FUNC13( int num, int lightmapNum, rawLightmap_t *lm, shaderInfo_t *si, float scale, float subdivide, clipWork_t *cw ){
	int i, x, y, v, t, pw[ 5 ], r;
	bspDrawSurface_t    *ds;
	surfaceInfo_t       *info;
	bspDrawVert_t       *bogus;
	bspDrawVert_t       *dv[ 4 ];
	mesh_t src, *subdivided, *mesh;
	float               *radVertexLuxel;
	float dist;
	vec4_t plane;
	qboolean planar;
	radWinding_t rw;


	/* get surface */
	ds = &bspDrawSurfaces[ num ];
	info = &surfaceInfos[ num ];

	/* construct a bogus vert list with color index stuffed into color[ 0 ] */
	bogus = FUNC12( ds->numVerts * sizeof( bspDrawVert_t ) );
	FUNC11( bogus, &yDrawVerts[ ds->firstVert ], ds->numVerts * sizeof( bspDrawVert_t ) );
	for ( i = 0; i < ds->numVerts; i++ )
		bogus[ i ].color[ 0 ][ 0 ] = i;

	/* build a subdivided mesh identical to shadow facets for this patch */
	/* this MUST MATCH FacetsForPatch() identically! */
	src.width = ds->patchWidth;
	src.height = ds->patchHeight;
	src.verts = bogus;
	//%	subdivided = SubdivideMesh( src, 8, 512 );
	subdivided = FUNC7( src, info->patchIterations );
	FUNC3( *subdivided );
	//%	MakeMeshNormals( *subdivided );
	mesh = FUNC6( subdivided );
	FUNC1( subdivided );
	FUNC10( bogus );

	/* FIXME: build interpolation table into color[ 1 ] */

	/* fix up color indexes */
	for ( i = 0; i < ( mesh->width * mesh->height ); i++ )
	{
		dv[ 0 ] = &mesh->verts[ i ];
		if ( dv[ 0 ]->color[ 0 ][ 0 ] >= ds->numVerts ) {
			dv[ 0 ]->color[ 0 ][ 0 ] = ds->numVerts - 1;
		}
	}

	/* iterate through the mesh quads */
	for ( y = 0; y < ( mesh->height - 1 ); y++ )
	{
		for ( x = 0; x < ( mesh->width - 1 ); x++ )
		{
			/* set indexes */
			pw[ 0 ] = x + ( y * mesh->width );
			pw[ 1 ] = x + ( ( y + 1 ) * mesh->width );
			pw[ 2 ] = x + 1 + ( ( y + 1 ) * mesh->width );
			pw[ 3 ] = x + 1 + ( y * mesh->width );
			pw[ 4 ] = x + ( y * mesh->width );    /* same as pw[ 0 ] */

			/* set radix */
			r = ( x + y ) & 1;

			/* get drawverts */
			dv[ 0 ] = &mesh->verts[ pw[ r + 0 ] ];
			dv[ 1 ] = &mesh->verts[ pw[ r + 1 ] ];
			dv[ 2 ] = &mesh->verts[ pw[ r + 2 ] ];
			dv[ 3 ] = &mesh->verts[ pw[ r + 3 ] ];

			/* planar? */
			planar = FUNC2( plane, dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz );
			if ( planar ) {
				dist = FUNC0( dv[ 1 ]->xyz, plane ) - plane[ 3 ];
				if ( FUNC9( dist ) > PLANAR_EPSILON ) {
					planar = qfalse;
				}
			}

			/* generate a quad */
			if ( planar ) {
				rw.numVerts = 4;
				for ( v = 0; v < 4; v++ )
				{
					/* get most everything */
					FUNC11( &rw.verts[ v ], dv[ v ], sizeof( bspDrawVert_t ) );

					/* fix colors */
					for ( i = 0; i < MAX_LIGHTMAPS; i++ )
					{
						radVertexLuxel = FUNC4( i, ds->firstVert + dv[ v ]->color[ 0 ][ 0 ] );
						FUNC8( radVertexLuxel, rw.verts[ v ].color[ i ] );
						rw.verts[ v ].color[ i ][ 3 ] = dv[ v ]->color[ i ][ 3 ];
					}
				}

				/* subdivide into area lights */
				FUNC5( lightmapNum, ds, lm, si, scale, subdivide, qtrue, &rw, cw );
			}

			/* generate 2 tris */
			else
			{
				rw.numVerts = 3;
				for ( t = 0; t < 2; t++ )
				{
					for ( v = 0; v < 3 + t; v++ )
					{
						/* get "other" triangle (stupid hacky logic, but whatevah) */
						if ( v == 1 && t == 1 ) {
							v++;
						}

						/* get most everything */
						FUNC11( &rw.verts[ v ], dv[ v ], sizeof( bspDrawVert_t ) );

						/* fix colors */
						for ( i = 0; i < MAX_LIGHTMAPS; i++ )
						{
							radVertexLuxel = FUNC4( i, ds->firstVert + dv[ v ]->color[ 0 ][ 0 ] );
							FUNC8( radVertexLuxel, rw.verts[ v ].color[ i ] );
							rw.verts[ v ].color[ i ][ 3 ] = dv[ v ]->color[ i ][ 3 ];
						}
					}

					/* subdivide into area lights */
					FUNC5( lightmapNum, ds, lm, si, scale, subdivide, qtrue, &rw, cw );
				}
			}
		}
	}

	/* free the mesh */
	FUNC1( mesh );
}