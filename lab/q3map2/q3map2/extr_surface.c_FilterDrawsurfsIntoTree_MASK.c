#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_5__ ;
typedef  struct TYPE_40__   TYPE_4__ ;
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_32__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_36__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_37__ {scalar_t__ furNumLayers; int compileFlags; scalar_t__ noFog; int /*<<< orphan*/  shader; scalar_t__* remapShader; scalar_t__* flareShader; int /*<<< orphan*/ * foliage; int /*<<< orphan*/  colorMod; int /*<<< orphan*/  mod; } ;
typedef  TYPE_2__ shaderInfo_t ;
struct TYPE_39__ {scalar_t__ numVerts; int type; scalar_t__ skybox; TYPE_2__* shaderInfo; int /*<<< orphan*/  fogNum; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; TYPE_32__* verts; } ;
typedef  TYPE_3__ mapDrawSurface_t ;
struct TYPE_40__ {int firstDrawSurf; int /*<<< orphan*/  origin; } ;
typedef  TYPE_4__ entity_t ;
struct TYPE_41__ {int numVerts; int numIndexes; } ;
typedef  TYPE_5__ bspDrawSurface_t ;
struct TYPE_38__ {int /*<<< orphan*/  st; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int C_NODRAW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_32__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC9 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC10 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC11 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC12 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int NUM_SURFACE_TYPES ; 
#define  SURFACE_DECAL 137 
#define  SURFACE_FACE 136 
#define  SURFACE_FLARE 135 
#define  SURFACE_FOGHULL 134 
#define  SURFACE_FOLIAGE 133 
#define  SURFACE_FORCED_META 132 
#define  SURFACE_META 131 
#define  SURFACE_PATCH 130 
#define  SURFACE_SHADER 129 
#define  SURFACE_TRIANGLES 128 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC18 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_5__* bspDrawSurfaces ; 
 TYPE_4__* entities ; 
 TYPE_3__* mapDrawSurfs ; 
 int numBSPDrawSurfaces ; 
 int /*<<< orphan*/  numFanSurfaces ; 
 int numMapDrawSurfs ; 
 int numRedundantIndexes ; 
 int /*<<< orphan*/  numStripSurfaces ; 
 int /*<<< orphan*/  numSurfaceModels ; 
 int* numSurfacesByType ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int* surfaceTypes ; 

void FUNC24( entity_t *e, tree_t *tree ){
	int i, j;
	mapDrawSurface_t    *ds;
	shaderInfo_t        *si;
	vec3_t origin, mins, maxs;
	int refs;
	int numSurfs, numRefs, numSkyboxSurfaces;


	/* note it */
	FUNC19( SYS_VRB, "--- FilterDrawsurfsIntoTree ---\n" );

	/* filter surfaces into the tree */
	numSurfs = 0;
	numRefs = 0;
	numSkyboxSurfaces = 0;
	for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
	{
		/* get surface and try to early out */
		ds = &mapDrawSurfs[ i ];
		if ( ds->numVerts == 0 && ds->type != SURFACE_FLARE && ds->type != SURFACE_SHADER ) {
			continue;
		}

		/* get shader */
		si = ds->shaderInfo;

		/* ydnar: skybox surfaces are special */
		if ( ds->skybox ) {
			refs = FUNC0( ds, tree->headnode, qtrue );
			ds->skybox = qfalse;
		}
		else
		{
			/* refs initially zero */
			refs = 0;

			/* apply texture coordinate mods */
			for ( j = 0; j < ds->numVerts; j++ )
				FUNC20( si->mod, ds->verts[ j ].st );

			/* ydnar: apply shader colormod */
			FUNC3( ds->shaderInfo->colorMod, ds->numVerts, ds->verts );

			/* ydnar: apply brush colormod */
			FUNC23( e, ds );

			/* ydnar: make fur surfaces */
			if ( si->furNumLayers > 0 ) {
				FUNC15( ds );
			}

			/* ydnar/sd: make foliage surfaces */
			if ( si->foliage != NULL ) {
				FUNC14( ds );
			}

			/* create a flare surface if necessary */
			if ( si->flareShader != NULL && si->flareShader[ 0 ] ) {
				FUNC1( ds, e->origin );
			}

			/* ydnar: don't emit nodraw surfaces (like nodraw fog) */
			if ( si != NULL && ( si->compileFlags & C_NODRAW ) && ds->type != SURFACE_PATCH ) {
				continue;
			}

			/* ydnar: bias the surface textures */
			FUNC2( ds );

			/* ydnar: globalizing of fog volume handling (eek a hack) */
			if ( e != entities && si->noFog == qfalse ) {
				/* find surface origin and offset by entity origin */
				FUNC21( ds->mins, ds->maxs, origin );
				FUNC22( origin, 0.5f, origin );
				FUNC21( origin, e->origin, origin );

				FUNC21( ds->mins, e->origin, mins );
				FUNC21( ds->maxs, e->origin, maxs );

				/* set the fog number for this surface */
				ds->fogNum = FUNC13( mins, maxs, 1.0f );  //%	FogForPoint( origin, 0.0f );
			}
		}

		/* ydnar: remap shader */
		if ( ds->shaderInfo->remapShader && ds->shaderInfo->remapShader[ 0 ] ) {
			ds->shaderInfo = FUNC18( ds->shaderInfo->remapShader );
		}

		/* ydnar: gs mods: handle the various types of surfaces */
		switch ( ds->type )
		{
		/* handle brush faces */
		case SURFACE_FACE:
		case SURFACE_DECAL:
			if ( refs == 0 ) {
				refs = FUNC8( ds, tree );
			}
			if ( refs > 0 ) {
				FUNC4( ds );
			}
			break;

		/* handle patches */
		case SURFACE_PATCH:
			if ( refs == 0 ) {
				refs = FUNC11( ds, tree );
			}
			if ( refs > 0 ) {
				FUNC6( ds );
			}
			break;

		/* handle triangle surfaces */
		case SURFACE_TRIANGLES:
		case SURFACE_FORCED_META:
		case SURFACE_META:
			//%	Sys_FPrintf( SYS_VRB, "Surface %4d: [%1d] %4d verts %s\n", numSurfs, ds->planar, ds->numVerts, si->shader );
			if ( refs == 0 ) {
				refs = FUNC12( ds, tree );
			}
			if ( refs > 0 ) {
				FUNC7( ds );
			}
			break;

		/* handle foliage surfaces (splash damage/wolf et) */
		case SURFACE_FOLIAGE:
			//%	Sys_FPrintf( SYS_VRB, "Surface %4d: [%d] %4d verts %s\n", numSurfs, ds->numFoliageInstances, ds->numVerts, si->shader );
			if ( refs == 0 ) {
				refs = FUNC10( ds, tree );
			}
			if ( refs > 0 ) {
				FUNC7( ds );
			}
			break;

		/* handle foghull surfaces */
		case SURFACE_FOGHULL:
			if ( refs == 0 ) {
				refs = FUNC0( ds, tree->headnode, qfalse );
			}
			if ( refs > 0 ) {
				FUNC7( ds );
			}
			break;

		/* handle flares */
		case SURFACE_FLARE:
			if ( refs == 0 ) {
				refs = FUNC9( ds, tree );
			}
			if ( refs > 0 ) {
				FUNC5( ds );
			}
			break;

		/* handle shader-only surfaces */
		case SURFACE_SHADER:
			refs = 1;
			FUNC5( ds );
			break;

		/* no references */
		default:
			refs = 0;
			break;
		}

		/* tot up the references */
		if ( refs > 0 ) {
			/* tot up counts */
			numSurfs++;
			numRefs += refs;

			/* emit extra surface data */
			FUNC17( ds, numBSPDrawSurfaces - 1 );
			//%	Sys_FPrintf( SYS_VRB, "%d verts %d indexes\n", ds->numVerts, ds->numIndexes );

			/* one last sanity check */
			{
				bspDrawSurface_t    *out;
				out = &bspDrawSurfaces[ numBSPDrawSurfaces - 1 ];
				if ( out->numVerts == 3 && out->numIndexes > 3 ) {
					FUNC19( SYS_WRN, "WARNING: Potentially bad %s surface (%d: %d, %d)\n     %s\n",
								surfaceTypes[ ds->type ],
								numBSPDrawSurfaces - 1, out->numVerts, out->numIndexes, si->shader );
				}
			}

			/* ydnar: handle skybox surfaces */
			if ( ds->skybox ) {
				FUNC16( ds );
				numSkyboxSurfaces++;
			}
		}
	}

	/* emit some statistics */
	FUNC19( SYS_VRB, "%9d references\n", numRefs );
	FUNC19( SYS_VRB, "%9d (%d) emitted drawsurfs\n", numSurfs, numBSPDrawSurfaces );
	FUNC19( SYS_VRB, "%9d stripped face surfaces\n", numStripSurfaces );
	FUNC19( SYS_VRB, "%9d fanned face surfaces\n", numFanSurfaces );
	FUNC19( SYS_VRB, "%9d surface models generated\n", numSurfaceModels );
	FUNC19( SYS_VRB, "%9d skybox surfaces generated\n", numSkyboxSurfaces );
	for ( i = 0; i < NUM_SURFACE_TYPES; i++ )
		FUNC19( SYS_VRB, "%9d %s surfaces\n", numSurfacesByType[ i ], surfaceTypes[ i ] );

	FUNC19( SYS_VRB, "%9d redundant indexes supressed, saving %d Kbytes\n", numRedundantIndexes, ( numRedundantIndexes * 4 / 1024 ) );
}