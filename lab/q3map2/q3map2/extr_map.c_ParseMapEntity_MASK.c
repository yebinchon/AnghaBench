#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {float shader; } ;
typedef  TYPE_1__ shaderInfo_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_19__ {scalar_t__ entityNum; int castShadows; int recvShadows; float lightmapScale; TYPE_1__* celShader; struct TYPE_19__* next; } ;
typedef  TYPE_2__ parseMesh_t ;
struct TYPE_20__ {char* key; char* value; struct TYPE_20__* next; } ;
typedef  TYPE_3__ epair_t ;
struct TYPE_21__ {scalar_t__ entityNum; int castShadows; int recvShadows; float lightmapScale; TYPE_1__* celShader; struct TYPE_21__* next; } ;
typedef  TYPE_4__ brush_t ;
struct TYPE_22__ {scalar_t__ mapEntityNum; scalar_t__* origin; TYPE_2__* patches; TYPE_4__* brushes; TYPE_3__* epairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ BPRIMIT_NEWBRUSHES ; 
 scalar_t__ BPRIMIT_OLDBRUSHES ; 
 int ENTITY_CAST_SHADOWS ; 
 int ENTITY_RECV_SHADOWS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 float FUNC2 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 size_t MAX_MAP_ENTITIES ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 TYPE_1__* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,char const*,float) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* FUNC18 (TYPE_5__*,char*) ; 
 int WORLDSPAWN_CAST_SHADOWS ; 
 int WORLDSPAWN_RECV_SHADOWS ; 
 TYPE_5__* entities ; 
 scalar_t__ entitySourceBrushes ; 
 scalar_t__ g_bBrushPrimit ; 
 TYPE_5__* mapEnt ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 size_t numEntities ; 
 scalar_t__ numMapEntities ; 
 int /*<<< orphan*/  numMapPatches ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  scriptline ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,char const*) ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 char* token ; 

__attribute__((used)) static qboolean FUNC22( qboolean onlyLights ){
	epair_t         *ep;
	const char      *classname, *value;
	float lightmapScale;
	char shader[ MAX_QPATH ];
	shaderInfo_t    *celShader = NULL;
	brush_t         *brush;
	parseMesh_t     *patch;
	qboolean funcGroup;
	int castShadows, recvShadows;


	/* eof check */
	if ( !FUNC4( qtrue ) ) {
		return qfalse;
	}

	/* conformance check */
	if ( FUNC21( token, "{" ) ) {
		FUNC15( SYS_WRN, "WARNING: ParseEntity: { not found, found %s on line %d - last entity was at: <%4.2f, %4.2f, %4.2f>...\n"
					"Continuing to process map, but resulting BSP may be invalid.\n",
					token, scriptline, entities[ numEntities ].origin[ 0 ], entities[ numEntities ].origin[ 1 ], entities[ numEntities ].origin[ 2 ] );
		return qfalse;
	}

	/* range check */
	if ( numEntities >= MAX_MAP_ENTITIES ) {
		FUNC1( "numEntities == MAX_MAP_ENTITIES" );
	}

	/* setup */
	entitySourceBrushes = 0;
	mapEnt = &entities[ numEntities ];
	numEntities++;
	FUNC19( mapEnt, 0, sizeof( *mapEnt ) );

	/* ydnar: true entity numbering */
	mapEnt->mapEntityNum = numMapEntities;
	numMapEntities++;

	/* loop */
	while ( 1 )
	{
		/* get initial token */
		if ( !FUNC4( qtrue ) ) {
			FUNC15( SYS_WRN, "WARNING: ParseEntity: EOF without closing brace\n"
						"Continuing to process map, but resulting BSP may be invalid.\n" );
			return qfalse;
		}

		if ( !FUNC21( token, "}" ) ) {
			break;
		}

		if ( !FUNC21( token, "{" ) ) {
			/* parse a brush or patch */
			if ( !FUNC4( qtrue ) ) {
				break;
			}

			/* check */
			if ( !FUNC21( token, "patchDef2" ) ) {
				numMapPatches++;
				FUNC10( onlyLights );
			}
			else if ( !FUNC21( token, "terrainDef" ) ) {
				//% ParseTerrain();
				FUNC15( SYS_WRN, "WARNING: Terrain entity parsing not supported in this build.\n" ); /* ydnar */
			}
			else if ( !FUNC21( token, "brushDef" ) ) {
				if ( g_bBrushPrimit == BPRIMIT_OLDBRUSHES ) {
					FUNC1( "Old brush format not allowed in new brush format map" );
				}
				g_bBrushPrimit = BPRIMIT_NEWBRUSHES;

				/* parse brush primitive */
				FUNC8( onlyLights );
			}
			else
			{
				if ( g_bBrushPrimit == BPRIMIT_NEWBRUSHES ) {
					FUNC1( "New brush format not allowed in old brush format map" );
				}
				g_bBrushPrimit = BPRIMIT_OLDBRUSHES;

				/* parse old brush format */
				FUNC17();
				FUNC8( onlyLights );
			}
			entitySourceBrushes++;
		}
		else
		{
			/* parse a key / value pair */
			ep = FUNC9();

			/* ydnar: 2002-07-06 fixed wolf bug with empty epairs */
			if ( ep->key[ 0 ] != '\0' && ep->value[ 0 ] != '\0' ) {
				ep->next = mapEnt->epairs;
				mapEnt->epairs = ep;
			}
		}
	}

	/* ydnar: get classname */
	classname = FUNC18( mapEnt, "classname" );

	/* ydnar: only lights? */
	if ( onlyLights ) {
		if ( FUNC12( classname, "light", 5 ) ) {
			numEntities--;
			return qtrue;
		}
		value = FUNC18( mapEnt, "noradiosity" );
		if ( value[ 0 ] == '1' ) {
			numEntities--;
			return qtrue;
		}
	}

	/* ydnar: determine if this is a func_group */
	if ( !FUNC11( "func_group", classname ) ) {
		funcGroup = qtrue;
	}
	else{
		funcGroup = qfalse;
	}

	/* worldspawn (and func_groups) default to cast/recv shadows in worldspawn group */
	if ( funcGroup || mapEnt->mapEntityNum == 0 ) {
		//%	Sys_Printf( "World:  %d\n", mapEnt->mapEntityNum );
		castShadows = WORLDSPAWN_CAST_SHADOWS;
		recvShadows = WORLDSPAWN_RECV_SHADOWS;
	}

	/* other entities don't cast any shadows, but recv worldspawn shadows */
	else
	{
		//%	Sys_Printf( "Entity: %d\n", mapEnt->mapEntityNum );
		castShadows = ENTITY_CAST_SHADOWS;
		recvShadows = ENTITY_RECV_SHADOWS;
	}

	/* get explicit shadow flags */
	FUNC3( mapEnt, NULL, &castShadows, &recvShadows );

	/* ydnar: get lightmap scaling value for this entity */
	if ( FUNC21( "", FUNC18( mapEnt, "lightmapscale" ) ) ||
		 FUNC21( "", FUNC18( mapEnt, "_lightmapscale" ) ) ) {
		/* get lightmap scale from entity */
		lightmapScale = FUNC2( mapEnt, "lightmapscale" );
		if ( lightmapScale <= 0.0f ) {
			lightmapScale = FUNC2( mapEnt, "_lightmapscale" );
		}
		if ( lightmapScale > 0.0f ) {
			FUNC16( "Entity %d (%s) has lightmap scale of %.4f\n", mapEnt->mapEntityNum, classname, lightmapScale );
		}
	}
	else{
		lightmapScale = 0.0f;
	}

	/* ydnar: get cel shader :) for this entity */
	value = FUNC18( mapEnt, "_celshader" );
	if ( value[ 0 ] == '\0' ) {
		value = FUNC18( &entities[ 0 ], "_celshader" );
	}
	if ( value[ 0 ] != '\0' ) {
		FUNC20( shader, "textures/%s", value );
		celShader = FUNC14( shader );
		FUNC16( "Entity %d (%s) has cel shader %s\n", mapEnt->mapEntityNum, classname, celShader->shader );
	}
	else{
		celShader = NULL;
	}

	/* attach stuff to everything in the entity */
	for ( brush = mapEnt->brushes; brush != NULL; brush = brush->next )
	{
		brush->entityNum = mapEnt->mapEntityNum;
		brush->castShadows = castShadows;
		brush->recvShadows = recvShadows;
		brush->lightmapScale = lightmapScale;
		brush->celShader = celShader;
	}

	for ( patch = mapEnt->patches; patch != NULL; patch = patch->next )
	{
		patch->entityNum = mapEnt->mapEntityNum;
		patch->castShadows = castShadows;
		patch->recvShadows = recvShadows;
		patch->lightmapScale = lightmapScale;
		patch->celShader = celShader;
	}

	/* ydnar: gs mods: set entity bounds */
	FUNC13( mapEnt );

	/* ydnar: gs mods: load shader index map (equivalent to old terrain alphamap) */
	FUNC6( mapEnt );

	/* get entity origin and adjust brushes */
	FUNC5( mapEnt, "origin", mapEnt->origin );
	if ( mapEnt->origin[ 0 ] || mapEnt->origin[ 1 ] || mapEnt->origin[ 2 ] ) {
		FUNC0( mapEnt );
	}

	/* group_info entities are just for editor grouping (fixme: leak!) */
	if ( !FUNC11( "group_info", classname ) ) {
		numEntities--;
		return qtrue;
	}

	/* group entities are just for editor convenience, toss all brushes into worldspawn */
	if ( funcGroup ) {
		FUNC7( mapEnt );
		numEntities--;
		return qtrue;
	}

	/* done */
	return qtrue;
}