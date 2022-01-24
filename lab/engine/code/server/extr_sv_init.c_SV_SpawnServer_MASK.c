#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  systemInfo ;
struct TYPE_18__ {int number; } ;
struct TYPE_19__ {TYPE_3__ s; } ;
typedef  TYPE_4__ sharedEntity_t ;
typedef  void* qboolean ;
typedef  int /*<<< orphan*/  entityState_t ;
struct TYPE_16__ {scalar_t__ type; } ;
struct TYPE_17__ {TYPE_1__ remoteAddress; } ;
struct TYPE_20__ {scalar_t__ state; int oldServerTime; int deltaMessage; scalar_t__ lastSnapshotTime; TYPE_4__* gentity; TYPE_2__ netchan; } ;
typedef  TYPE_5__ client_t ;
struct TYPE_24__ {void* modified; } ;
struct TYPE_23__ {int integer; scalar_t__ modified; } ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {int numSnapshotEntities; int time; TYPE_5__* clients; int /*<<< orphan*/  snapFlagServerBit; scalar_t__ nextSnapshotEntities; int /*<<< orphan*/  snapshotEntities; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int time; unsigned int checksumFeed; int serverId; int restartedServerId; int checksumFeedServerId; int /*<<< orphan*/  state; int /*<<< orphan*/ * configstrings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,void*,int*) ; 
 scalar_t__ CS_ACTIVE ; 
 scalar_t__ CS_CONNECTED ; 
 int /*<<< orphan*/  CS_SERVERINFO ; 
 int /*<<< orphan*/  CS_SYSTEMINFO ; 
 int /*<<< orphan*/  CVAR_SERVERINFO ; 
 int /*<<< orphan*/  CVAR_SYSTEMINFO ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 () ; 
 char* FUNC14 () ; 
 char* FUNC15 () ; 
 char* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  GAME_CLIENT_BEGIN ; 
 int /*<<< orphan*/  GAME_CLIENT_CONNECT ; 
 int /*<<< orphan*/  GAME_RUN_FRAME ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int MAX_CONFIGSTRINGS ; 
 scalar_t__ NA_BOT ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SNAPFLAG_SERVERCOUNT ; 
 int /*<<< orphan*/  SS_GAME ; 
 int /*<<< orphan*/  SS_LOADING ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,char*) ; 
 TYPE_4__* FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 char* FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_11__* com_dedicated ; 
 int com_frameTime ; 
 int /*<<< orphan*/  cvar_modifiedFlags ; 
 int /*<<< orphan*/  gvm ; 
 int /*<<< orphan*/  h_high ; 
 void* qfalse ; 
 void* qtrue ; 
 scalar_t__ FUNC37 () ; 
 scalar_t__ FUNC38 (char const*) ; 
 TYPE_10__ sv ; 
 TYPE_9__* sv_gametype ; 
 TYPE_8__* sv_maxclients ; 
 TYPE_7__* sv_pure ; 
 TYPE_6__ svs ; 
 char const* FUNC39 (char*,...) ; 

void FUNC40( char *server, qboolean killBots ) {
	int			i;
	int			checksum;
	qboolean	isBot;
	char		systemInfo[16384];
	const char	*p;

	// shut down the existing game if it is running
	FUNC32();

	FUNC6 ("------ Server Initialization ------\n");
	FUNC6 ("Server: %s\n",server);

	// if not running a dedicated server CL_MapLoading will connect the client to the server
	// also print some status stuff
	FUNC0();

	// make sure all the client stuff is unloaded
	FUNC1(qfalse);

	// clear the whole hunk because we're (re)loading the server
	FUNC19();

	// clear collision map data
	FUNC3();

	// init client structures and svs.numSnapshotEntities 
	if ( !FUNC11("sv_running") ) {
		FUNC33();
	} else {
		// check for maxclients change
		if ( sv_maxclients->modified ) {
			FUNC23();
		}
	}

	// clear pak references
	FUNC12(0);

	// allocate the snapshot entities on the hunk
	svs.snapshotEntities = FUNC18( sizeof(entityState_t)*svs.numSnapshotEntities, h_high );
	svs.nextSnapshotEntities = 0;

	// toggle the server bit so clients can detect that a
	// server has changed
	svs.snapFlagServerBit ^= SNAPFLAG_SERVERCOUNT;

	// set nextmap to the same map, but it may be overriden
	// by the game startup or another console command
	FUNC10( "nextmap", "map_restart 0");
//	Cvar_Set( "nextmap", va("map %s", server) );

	for (i=0 ; i<sv_maxclients->integer ; i++) {
		// save when the server started for each client already connected
		if (svs.clients[i].state >= CS_CONNECTED) {
			svs.clients[i].oldServerTime = sv.time;
		}
	}

	// wipe the entire per-level structure
	FUNC24();
	for ( i = 0 ; i < MAX_CONFIGSTRINGS ; i++ ) {
		sv.configstrings[i] = FUNC7("");
	}

	// make sure we are not paused
	FUNC10("cl_paused", "0");

	// get a new checksum feed and restart the file system
	sv.checksumFeed = ( ((unsigned int)FUNC37() << 16) ^ (unsigned int)FUNC37() ) ^ FUNC5();
	FUNC17( sv.checksumFeed );

	FUNC4( FUNC39("maps/%s.bsp", server), qfalse, &checksum );

	// set serverinfo visible name
	FUNC10( "mapname", server );

	FUNC10( "sv_mapChecksum", FUNC39("%i",checksum) );

	// serverid should be different each time
	sv.serverId = com_frameTime;
	sv.restartedServerId = sv.serverId; // I suppose the init here is just to be safe
	sv.checksumFeedServerId = sv.serverId;
	FUNC10( "sv_serverid", FUNC39("%i", sv.serverId ) );

	// clear physics interaction links
	FUNC25 ();
	
	// media configstring setting should be done during
	// the loading stage, so connected clients don't have
	// to load during actual gameplay
	sv.state = SS_LOADING;

	// load and spawn all other entities
	FUNC30();

	// don't allow a map_restart if game is modified
	sv_gametype->modified = qfalse;

	// run a few frames to allow everything to settle
	for (i = 0;i < 3; i++)
	{
		FUNC35 (gvm, GAME_RUN_FRAME, sv.time);
		FUNC22 (sv.time);
		sv.time += 100;
		svs.time += 100;
	}

	// create a baseline for more efficient communications
	FUNC26 ();

	for (i=0 ; i<sv_maxclients->integer ; i++) {
		// send the new gamestate to all connected clients
		if (svs.clients[i].state >= CS_CONNECTED) {
			char	*denied;

			if ( svs.clients[i].netchan.remoteAddress.type == NA_BOT ) {
				if ( killBots ) {
					FUNC27( &svs.clients[i], "" );
					continue;
				}
				isBot = qtrue;
			}
			else {
				isBot = qfalse;
			}

			// connect the client again
			denied = FUNC36( gvm, FUNC35( gvm, GAME_CLIENT_CONNECT, i, qfalse, isBot ) );	// firstTime = qfalse
			if ( denied ) {
				// this generally shouldn't happen, because the client
				// was connected before the level change
				FUNC27( &svs.clients[i], denied );
			} else {
				if( !isBot ) {
					// when we get the next packet from a connected client,
					// the new gamestate will be sent
					svs.clients[i].state = CS_CONNECTED;
				}
				else {
					client_t		*client;
					sharedEntity_t	*ent;

					client = &svs.clients[i];
					client->state = CS_ACTIVE;
					ent = FUNC28( i );
					ent->s.number = i;
					client->gentity = ent;

					client->deltaMessage = -1;
					client->lastSnapshotTime = 0;	// generate a snapshot immediately

					FUNC35( gvm, GAME_CLIENT_BEGIN, i );
				}
			}
		}
	}	

	// run another frame to allow things to look at all the players
	FUNC35 (gvm, GAME_RUN_FRAME, sv.time);
	FUNC22 (sv.time);
	sv.time += 100;
	svs.time += 100;

	if ( sv_pure->integer ) {
		// the server sends these to the clients so they will only
		// load pk3s also loaded at the server
		p = FUNC13();
		FUNC10( "sv_paks", p );
		if (FUNC38(p) == 0) {
			FUNC6( "WARNING: sv_pure set but no PK3 files loaded\n" );
		}
		p = FUNC14();
		FUNC10( "sv_pakNames", p );

		// we need to touch the cgame and ui qvm because they could be in
		// separate pk3 files and the client will need to download the pk3
		// files with the latest cgame and ui qvm to pass the pure check
		FUNC34( "vm/cgame.qvm" );
		FUNC34( "vm/ui.qvm" );
	}
	else {
		FUNC10( "sv_paks", "" );
		FUNC10( "sv_pakNames", "" );
	}
	// the server sends these to the clients so they can figure
	// out which pk3s should be auto-downloaded
	p = FUNC15();
	FUNC10( "sv_referencedPaks", p );
	p = FUNC16();
	FUNC10( "sv_referencedPakNames", p );

	// save systeminfo and serverinfo strings
	FUNC21( systemInfo, FUNC9( CVAR_SYSTEMINFO ), sizeof( systemInfo ) );
	cvar_modifiedFlags &= ~CVAR_SYSTEMINFO;
	FUNC31( CS_SYSTEMINFO, systemInfo );

	FUNC31( CS_SERVERINFO, FUNC8( CVAR_SERVERINFO ) );
	cvar_modifiedFlags &= ~CVAR_SERVERINFO;

	// any media configstring setting now should issue a warning
	// and any configstring changes should be reliably transmitted
	// to all clients
	sv.state = SS_GAME;

	// send a heartbeat now so the master will get up to date info
	FUNC29();

	FUNC20();

#ifndef DEDICATED
	if ( com_dedicated->integer ) {
		// restart renderer in order to show console for dedicated servers
		// launched through the regular binary
		FUNC2( qtrue );
	}
#endif

	FUNC6 ("-----------------------------------\n");
}