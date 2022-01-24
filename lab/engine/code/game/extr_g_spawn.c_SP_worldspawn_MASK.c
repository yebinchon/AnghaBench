#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_9__ {size_t ownerNum; } ;
struct TYPE_8__ {size_t number; } ;
struct TYPE_13__ {char* classname; TYPE_2__ r; TYPE_1__ s; } ;
struct TYPE_12__ {char* string; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int startTime; int warmupTime; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_GAME_VERSION ; 
 int /*<<< orphan*/  CS_LEVEL_START_TIME ; 
 int /*<<< orphan*/  CS_MESSAGE ; 
 int /*<<< orphan*/  CS_MOTD ; 
 int /*<<< orphan*/  CS_MUSIC ; 
 int /*<<< orphan*/  CS_WARMUP ; 
 size_t ENTITYNUM_NONE ; 
 size_t ENTITYNUM_WORLD ; 
 char* GAME_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char**) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 TYPE_7__ g_doWarmup ; 
 TYPE_6__* g_entities ; 
 TYPE_5__ g_motd ; 
 TYPE_4__ g_restarted ; 
 TYPE_3__ level ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char*,int) ; 

void FUNC7( void ) {
	char	*s;

	FUNC2( "classname", "", &s );
	if ( FUNC3( s, "worldspawn" ) ) {
		FUNC0( "SP_worldspawn: The first entity isn't 'worldspawn'" );
	}

	// make some data visible to connecting client
	FUNC5( CS_GAME_VERSION, GAME_VERSION );

	FUNC5( CS_LEVEL_START_TIME, FUNC6("%i", level.startTime ) );

	FUNC2( "music", "", &s );
	FUNC5( CS_MUSIC, s );

	FUNC2( "message", "", &s );
	FUNC5( CS_MESSAGE, s );				// map specific message

	FUNC5( CS_MOTD, g_motd.string );		// message of the day

	FUNC2( "gravity", "800", &s );
	FUNC4( "g_gravity", s );

	FUNC2( "enableDust", "0", &s );
	FUNC4( "g_enableDust", s );

	FUNC2( "enableBreath", "0", &s );
	FUNC4( "g_enableBreath", s );

	g_entities[ENTITYNUM_WORLD].s.number = ENTITYNUM_WORLD;
	g_entities[ENTITYNUM_WORLD].r.ownerNum = ENTITYNUM_NONE;
	g_entities[ENTITYNUM_WORLD].classname = "worldspawn";

	g_entities[ENTITYNUM_NONE].s.number = ENTITYNUM_NONE;
	g_entities[ENTITYNUM_NONE].r.ownerNum = ENTITYNUM_NONE;
	g_entities[ENTITYNUM_NONE].classname = "nothing";

	// see if we want a warmup time
	FUNC5( CS_WARMUP, "" );
	if ( g_restarted.integer ) {
		FUNC4( "g_restarted", "0" );
		level.warmupTime = 0;
	} else if ( g_doWarmup.integer ) { // Turn it on
		level.warmupTime = -1;
		FUNC5( CS_WARMUP, FUNC6("%i", level.warmupTime) );
		FUNC1( "Warmup:\n" );
	}

}