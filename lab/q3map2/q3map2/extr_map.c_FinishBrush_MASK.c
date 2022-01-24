#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_14__ {int entityNum; struct TYPE_14__* nextColorModBrush; TYPE_2__* contentShader; struct TYPE_14__* next; scalar_t__ opaque; struct TYPE_14__* original; int /*<<< orphan*/  brushNum; } ;
typedef  TYPE_3__ brush_t ;
struct TYPE_17__ {int compileFlags; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
struct TYPE_16__ {int /*<<< orphan*/  origin; } ;
struct TYPE_15__ {int mapEntityNum; TYPE_3__* colorModBrushes; TYPE_3__* lastBrush; TYPE_3__* brushes; } ;
struct TYPE_13__ {TYPE_1__* colorMod; } ;
struct TYPE_12__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CM_VOLUME ; 
 int C_AREAPORTAL ; 
 int C_ORIGIN ; 
 TYPE_3__* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,double,scalar_t__*) ; 
 TYPE_6__* buildBrush ; 
 TYPE_5__* entities ; 
 int /*<<< orphan*/  entitySourceBrushes ; 
 TYPE_4__* mapEnt ; 
 int numEntities ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,int,int) ; 

brush_t *FUNC9( void ){
	brush_t     *b;


	/* create windings for sides and bounds for brush */
	if ( !FUNC2( buildBrush ) ) {
		return NULL;
	}

	/* origin brushes are removed, but they set the rotation origin for the rest of the brushes in the entity.
	   after the entire entity is parsed, the planenums and texinfos will be adjusted for the origin brush */
	if ( buildBrush->compileFlags & C_ORIGIN ) {
		char string[ 32 ];
		vec3_t origin;

		if ( numEntities == 1 ) {
			FUNC4( "Entity %i, Brush %i: origin brushes not allowed in world\n",
						mapEnt->mapEntityNum, entitySourceBrushes );
			return NULL;
		}

		FUNC5( buildBrush->mins, buildBrush->maxs, origin );
		FUNC7( origin, 0.5, origin );

		FUNC8( string, "%i %i %i", (int) origin[ 0 ], (int) origin[ 1 ], (int) origin[ 2 ] );
		FUNC3( &entities[ numEntities - 1 ], "origin", string );

		FUNC6( origin, entities[ numEntities - 1 ].origin );

		/* don't keep this brush */
		return NULL;
	}

	/* determine if the brush is an area portal */
	if ( buildBrush->compileFlags & C_AREAPORTAL ) {
		if ( numEntities != 1 ) {
			FUNC4( "Entity %i, Brush %i: areaportals only allowed in world\n", numEntities - 1, entitySourceBrushes );
			return NULL;
		}
	}

	/* add bevel planes */
	FUNC0();

	/* keep it */
	b = FUNC1( buildBrush );

	/* set map entity and brush numbering */
	b->entityNum = mapEnt->mapEntityNum;
	b->brushNum = entitySourceBrushes;

	/* set original */
	b->original = b;

	/* link opaque brushes to head of list, translucent brushes to end */
	if ( b->opaque || mapEnt->lastBrush == NULL ) {
		b->next = mapEnt->brushes;
		mapEnt->brushes = b;
		if ( mapEnt->lastBrush == NULL ) {
			mapEnt->lastBrush = b;
		}
	}
	else
	{
		b->next = NULL;
		mapEnt->lastBrush->next = b;
		mapEnt->lastBrush = b;
	}

	/* link colorMod volume brushes to the entity directly */
	if ( b->contentShader != NULL &&
		 b->contentShader->colorMod != NULL &&
		 b->contentShader->colorMod->type == CM_VOLUME ) {
		b->nextColorModBrush = mapEnt->colorModBrushes;
		mapEnt->colorModBrushes = b;
	}

	/* return to sender */
	return b;
}