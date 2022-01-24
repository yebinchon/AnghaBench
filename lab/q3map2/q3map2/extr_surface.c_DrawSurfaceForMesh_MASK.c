#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_12__ ;

/* Type definitions */
typedef  float* vec4_t ;
typedef  float* vec3_t ;
struct TYPE_25__ {float* stFlat; float** vecs; scalar_t__ tcGen; scalar_t__ indexed; } ;
typedef  TYPE_1__ shaderInfo_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_27__ {int width; int height; TYPE_9__* verts; } ;
struct TYPE_26__ {int /*<<< orphan*/  celShader; int /*<<< orphan*/  maxIterations; int /*<<< orphan*/  longestCurve; int /*<<< orphan*/  lightmapScale; int /*<<< orphan*/  recvShadows; int /*<<< orphan*/  castShadows; int /*<<< orphan*/  entityNum; TYPE_12__* im; int /*<<< orphan*/  eMaxs; int /*<<< orphan*/  eMins; TYPE_1__* shaderInfo; TYPE_3__ mesh; } ;
typedef  TYPE_2__ parseMesh_t ;
typedef  TYPE_3__ mesh_t ;
struct TYPE_28__ {int patchWidth; int patchHeight; int numVerts; int fogNum; int planeNum; float** lightmapVecs; int /*<<< orphan*/  celShader; TYPE_6__* verts; int /*<<< orphan*/  maxIterations; int /*<<< orphan*/  longestCurve; int /*<<< orphan*/  lightmapScale; TYPE_2__* mapMesh; TYPE_1__* shaderInfo; int /*<<< orphan*/  recvShadows; int /*<<< orphan*/  castShadows; int /*<<< orphan*/  entityNum; } ;
typedef  TYPE_4__ mapDrawSurface_t ;
struct TYPE_29__ {int /*<<< orphan*/  origin; } ;
typedef  TYPE_5__ entity_t ;
typedef  size_t byte ;
struct TYPE_30__ {float* normal; float* st; float* xyz; int** color; } ;
typedef  TYPE_6__ bspDrawVert_t ;
struct TYPE_31__ {float* normal; float* xyz; } ;
struct TYPE_24__ {float* offsets; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 float FUNC2 (float*,float*) ; 
 scalar_t__ EQUAL_EPSILON ; 
 int FUNC3 (float*,float,int,float**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,TYPE_12__*,int,size_t*) ; 
 size_t FUNC6 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int MAX_EXPANDED_AXIS ; 
 int MAX_LIGHTMAPS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__) ; 
 int /*<<< orphan*/  SURFACE_PATCH ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (float*,int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC11 (float*,float*) ; 
 int /*<<< orphan*/  FUNC12 (float*,float*) ; 
 float FUNC13 (float*) ; 
 scalar_t__ FUNC14 (float) ; 
 scalar_t__ flat ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,TYPE_9__*,int) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 TYPE_6__* FUNC16 (int) ; 

mapDrawSurface_t *FUNC17( entity_t *e, parseMesh_t *p, mesh_t *mesh ){
	int i, k, numVerts;
	vec4_t plane;
	qboolean planar;
	float dist;
	mapDrawSurface_t    *ds;
	shaderInfo_t        *si, *parent;
	bspDrawVert_t       *dv;
	vec3_t vTranslated;
	mesh_t              *copy;
	qboolean indexed;
	byte shaderIndexes[ MAX_EXPANDED_AXIS * MAX_EXPANDED_AXIS ];
	float offsets[ MAX_EXPANDED_AXIS * MAX_EXPANDED_AXIS ];


	/* get mesh and shader shader */
	if ( mesh == NULL ) {
		mesh = &p->mesh;
	}
	si = p->shaderInfo;
	if ( mesh == NULL || si == NULL ) {
		return NULL;
	}

	/* get vertex count */
	numVerts = mesh->width * mesh->height;

	/* to make valid normals for patches with degenerate edges,
	   we need to make a copy of the mesh and put the aproximating
	   points onto the curve */

	/* create a copy of the mesh */
	copy = FUNC1( mesh );

	/* store off the original (potentially bad) normals */
	FUNC7( *copy );
	for ( i = 0; i < numVerts; i++ )
		FUNC12( copy->verts[ i ].normal, mesh->verts[ i ].normal );

	/* put the mesh on the curve */
	FUNC8( *copy );

	/* find new normals (to take into account degenerate/flipped edges */
	FUNC7( *copy );
	for ( i = 0; i < numVerts; i++ )
	{
		/* ydnar: only copy normals that are significantly different from the originals */
		if ( FUNC2( copy->verts[ i ].normal, mesh->verts[ i ].normal ) < 0.75f ) {
			FUNC12( copy->verts[ i ].normal, mesh->verts[ i ].normal );
		}
	}

	/* free the old mesh */
	FUNC4( copy );

	/* ydnar: gs mods: check for indexed shader */
	if ( si->indexed && p->im != NULL ) {
		/* indexed */
		indexed = qtrue;

		/* get shader indexes for each point */
		for ( i = 0; i < numVerts; i++ )
		{
			shaderIndexes[ i ] = FUNC6( p->im, p->eMins, p->eMaxs, mesh->verts[ i ].xyz );
			offsets[ i ] = p->im->offsets[ shaderIndexes[ i ] ];
		}

		/* get matching shader and set alpha */
		parent = si;
		si = FUNC5( parent, p->im, numVerts, shaderIndexes );
	}
	else{
		indexed = qfalse;
	}


	/* ydnar: gs mods */
	ds = FUNC0( SURFACE_PATCH );
	ds->entityNum = p->entityNum;
	ds->castShadows = p->castShadows;
	ds->recvShadows = p->recvShadows;

	ds->shaderInfo = si;
	ds->mapMesh = p;
	ds->lightmapScale = p->lightmapScale;   /* ydnar */
	ds->patchWidth = mesh->width;
	ds->patchHeight = mesh->height;
	ds->numVerts = ds->patchWidth * ds->patchHeight;
	ds->verts = FUNC16( ds->numVerts * sizeof( *ds->verts ) );
	FUNC15( ds->verts, mesh->verts, ds->numVerts * sizeof( *ds->verts ) );

	ds->fogNum = -1;
	ds->planeNum = -1;

	ds->longestCurve = p->longestCurve;
	ds->maxIterations = p->maxIterations;

	/* construct a plane from the first vert */
	FUNC12( mesh->verts[ 0 ].normal, plane );
	plane[ 3 ] = FUNC2( mesh->verts[ 0 ].xyz, plane );
	planar = qtrue;

	/* spew forth errors */
	if ( FUNC13( plane ) < 0.001f ) {
		FUNC9( "DrawSurfaceForMesh: bogus plane\n" );
	}

	/* test each vert */
	for ( i = 1; i < ds->numVerts && planar; i++ )
	{
		/* normal test */
		if ( FUNC11( plane, mesh->verts[ i ].normal ) == qfalse ) {
			planar = qfalse;
		}

		/* point-plane test */
		dist = FUNC2( mesh->verts[ i ].xyz, plane ) - plane[ 3 ];
		if ( FUNC14( dist ) > EQUAL_EPSILON ) {
			planar = qfalse;
		}
	}

	/* add a map plane */
	if ( planar ) {
		/* make a map plane */
		ds->planeNum = FUNC3( plane, plane[ 3 ], 1, &mesh->verts[ 0 ].xyz );
		FUNC12( plane, ds->lightmapVecs[ 2 ] );

		/* push this normal to all verts (ydnar 2003-02-14: bad idea, small patches get screwed up) */
		for ( i = 0; i < ds->numVerts; i++ )
			FUNC12( plane, ds->verts[ i ].normal );
	}

	/* walk the verts to do special stuff */
	for ( i = 0; i < ds->numVerts; i++ )
	{
		/* get the drawvert */
		dv = &ds->verts[ i ];

		/* ydnar: tek-fu celshading support for flat shaded shit */
		if ( flat ) {
			dv->st[ 0 ] = si->stFlat[ 0 ];
			dv->st[ 1 ] = si->stFlat[ 1 ];
		}

		/* ydnar: gs mods: added support for explicit shader texcoord generation */
		else if ( si->tcGen ) {
			/* translate by origin and project the texture */
			FUNC10( dv->xyz, e->origin, vTranslated );
			dv->st[ 0 ] = FUNC2( si->vecs[ 0 ], vTranslated );
			dv->st[ 1 ] = FUNC2( si->vecs[ 1 ], vTranslated );
		}

		/* ydnar: set color */
		for ( k = 0; k < MAX_LIGHTMAPS; k++ )
		{
			dv->color[ k ][ 0 ] = 255;
			dv->color[ k ][ 1 ] = 255;
			dv->color[ k ][ 2 ] = 255;

			/* ydnar: gs mods: handle indexed shader blending */
			dv->color[ k ][ 3 ] = ( indexed ? shaderIndexes[ i ] : 255 );
		}

		/* ydnar: offset */
		if ( indexed ) {
			dv->xyz[ 2 ] += offsets[ i ];
		}
	}

	/* set cel shader */
	ds->celShader = p->celShader;

	/* return the drawsurface */
	return ds;
}