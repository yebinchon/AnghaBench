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
struct TYPE_14__ {int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_12__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_13__ {int /*<<< orphan*/  origin; TYPE_1__ pos; } ;
struct TYPE_15__ {TYPE_3__ r; TYPE_2__ s; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_17__ {size_t integer; } ;
struct TYPE_16__ {int numSpawnVars; int /*<<< orphan*/ ** spawnVars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t GT_FFA ; 
 size_t GT_MAX_GAME_TYPE ; 
 size_t GT_SINGLE_PLAYER ; 
 size_t GT_TEAM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ g_gametype ; 
 TYPE_5__ level ; 
 char* FUNC8 (char*,char*) ; 

gentity_t* FUNC9( void ) {
	int			i;
	gentity_t	*ent;
	char		*s, *value, *gametypeName;
	static char *gametypeNames[] = {"ffa", "tournament", "single", "team", "ctf", "oneflag", "obelisk", "harvester"};

	// get the next free entity
	ent = FUNC4();

	for ( i = 0 ; i < level.numSpawnVars ; i++ ) {
		FUNC3( level.spawnVars[i][0], level.spawnVars[i][1], ent );
	}

	// check for "notsingle" flag
	if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
		FUNC5( "notsingle", "0", &i );
		if ( i ) {
			FUNC0();
			FUNC2( ent );
			return NULL;
		}
	}
	// check for "notteam" flag (GT_FFA, GT_TOURNAMENT, GT_SINGLE_PLAYER)
	if ( g_gametype.integer >= GT_TEAM ) {
		FUNC5( "notteam", "0", &i );
		if ( i ) {
			FUNC0();
			FUNC2( ent );
			return NULL;
		}
	} else {
		FUNC5( "notfree", "0", &i );
		if ( i ) {
			FUNC0();
			FUNC2( ent );
			return NULL;
		}
	}

#ifdef MISSIONPACK
	G_SpawnInt( "notta", "0", &i );
	if ( i ) {
		ADJUST_AREAPORTAL();
		G_FreeEntity( ent );
		return NULL;
	}
#else
	FUNC5( "notq3a", "0", &i );
	if ( i ) {
		FUNC0();
		FUNC2( ent );
		return NULL;
	}
#endif

	if( FUNC6( "gametype", NULL, &value ) ) {
		if( g_gametype.integer >= GT_FFA && g_gametype.integer < GT_MAX_GAME_TYPE ) {
			gametypeName = gametypeNames[g_gametype.integer];

			s = FUNC8( value, gametypeName );
			if( !s ) {
				FUNC0();
				FUNC2( ent );
				return NULL;
			}
		}
	}

	// move editor origin to pos
	FUNC7( ent->s.origin, ent->s.pos.trBase );
	FUNC7( ent->s.origin, ent->r.currentOrigin );

	// if we didn't get a classname, don't bother spawning anything
	if ( !FUNC1( ent ) ) {
		FUNC2( ent );
		return NULL;
	}
	return ent;
}