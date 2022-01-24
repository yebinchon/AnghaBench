#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_10__ {int width; int height; TYPE_1__* verts; } ;
struct TYPE_11__ {TYPE_2__ mesh; struct TYPE_11__* next; } ;
typedef  TYPE_3__ parseMesh_t ;
struct TYPE_12__ {TYPE_3__* patches; TYPE_6__* brushes; } ;
typedef  TYPE_4__ entity_t ;
struct TYPE_13__ {int /*<<< orphan*/  firstBSPBrush; int /*<<< orphan*/  firstBSPSurface; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_5__ bspModel_t ;
struct TYPE_14__ {scalar_t__ numsides; int compileFlags; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; struct TYPE_14__* next; } ;
typedef  TYPE_6__ brush_t ;
struct TYPE_9__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int C_LIGHTGRID ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t MAX_MAP_MODELS ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 TYPE_5__* bspModels ; 
 TYPE_4__* entities ; 
 size_t mapEntityNum ; 
 int /*<<< orphan*/  numBSPBrushes ; 
 int /*<<< orphan*/  numBSPDrawSurfaces ; 
 size_t numBSPModels ; 

void FUNC5( void ){
	bspModel_t  *mod;
	brush_t     *b;
	entity_t    *e;
	vec3_t mins, maxs;
	vec3_t lgMins, lgMaxs;          /* ydnar: lightgrid mins/maxs */
	parseMesh_t *p;
	int i;


	/* test limits */
	if ( numBSPModels == MAX_MAP_MODELS ) {
		FUNC2( "MAX_MAP_MODELS" );
	}

	/* get model and entity */
	mod = &bspModels[ numBSPModels ];
	e = &entities[ mapEntityNum ];

	/* ydnar: lightgrid mins/maxs */
	FUNC1( lgMins, lgMaxs );

	/* bound the brushes */
	FUNC1( mins, maxs );
	for ( b = e->brushes; b; b = b->next )
	{
		/* ignore non-real brushes (origin, etc) */
		if ( b->numsides == 0 ) {
			continue;
		}
		FUNC0( b->mins, mins, maxs );
		FUNC0( b->maxs, mins, maxs );

		/* ydnar: lightgrid bounds */
		if ( b->compileFlags & C_LIGHTGRID ) {
			FUNC0( b->mins, lgMins, lgMaxs );
			FUNC0( b->maxs, lgMins, lgMaxs );
		}
	}

	/* bound patches */
	for ( p = e->patches; p; p = p->next )
	{
		for ( i = 0; i < ( p->mesh.width * p->mesh.height ); i++ )
			FUNC0( p->mesh.verts[i].xyz, mins, maxs );
	}

	/* ydnar: lightgrid mins/maxs */
	if ( lgMins[ 0 ] < 99999 ) {
		/* use lightgrid bounds */
		FUNC4( lgMins, mod->mins );
		FUNC4( lgMaxs, mod->maxs );
	}
	else
	{
		/* use brush/patch bounds */
		FUNC4( mins, mod->mins );
		FUNC4( maxs, mod->maxs );
	}

	/* note size */
	FUNC3( SYS_VRB, "BSP bounds: { %f %f %f } { %f %f %f }\n", mins[ 0 ], mins[ 1 ], mins[ 2 ], maxs[ 0 ], maxs[ 1 ], maxs[ 2 ] );
	FUNC3( SYS_VRB, "Lightgrid bounds: { %f %f %f } { %f %f %f }\n", lgMins[ 0 ], lgMins[ 1 ], lgMins[ 2 ], lgMaxs[ 0 ], lgMaxs[ 1 ], lgMaxs[ 2 ] );

	/* set firsts */
	mod->firstBSPSurface = numBSPDrawSurfaces;
	mod->firstBSPBrush = numBSPBrushes;
}