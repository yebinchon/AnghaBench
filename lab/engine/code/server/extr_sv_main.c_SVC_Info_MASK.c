#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_16__ ;
typedef  struct TYPE_22__   TYPE_15__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_32__ {int integer; } ;
struct TYPE_31__ {int integer; } ;
struct TYPE_30__ {int integer; } ;
struct TYPE_29__ {int integer; } ;
struct TYPE_28__ {char* string; } ;
struct TYPE_27__ {TYPE_3__* clients; } ;
struct TYPE_24__ {scalar_t__ type; } ;
struct TYPE_25__ {TYPE_1__ remoteAddress; } ;
struct TYPE_26__ {scalar_t__ state; TYPE_2__ netchan; } ;
struct TYPE_23__ {char* string; } ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {int integer; } ;
struct TYPE_20__ {int integer; } ;
struct TYPE_19__ {char* string; } ;
struct TYPE_18__ {char* string; } ;
struct TYPE_17__ {int integer; } ;

/* Variables and functions */
 scalar_t__ CS_CONNECTED ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int MAX_INFO_STRING ; 
 scalar_t__ NA_BOT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  NS_SERVER ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_16__* com_gamename ; 
 TYPE_15__* com_legacyprotocol ; 
 TYPE_14__* com_protocol ; 
 int /*<<< orphan*/  outboundLeakyBucket ; 
 int FUNC10 (char*) ; 
 TYPE_13__* sv_gametype ; 
 TYPE_12__* sv_hostname ; 
 TYPE_11__* sv_mapname ; 
 TYPE_10__* sv_maxPing ; 
 TYPE_9__* sv_maxclients ; 
 TYPE_8__* sv_minPing ; 
 TYPE_7__* sv_privateClients ; 
 TYPE_6__* sv_pure ; 
 TYPE_5__* sv_voipProtocol ; 
 TYPE_4__ svs ; 
 char* FUNC11 (char*,int) ; 

void FUNC12( netadr_t from ) {
	int		i, count, humans;
	char	*gamedir;
	char	infostring[MAX_INFO_STRING];

	// ignore if we are in single player
	if ( FUNC4( "g_gametype" ) == GT_SINGLE_PLAYER || FUNC4("ui_singlePlayerActive")) {
		return;
	}

	// Prevent using getinfo as an amplifier
	if ( FUNC9( from, 10, 1000 ) ) {
		FUNC1( "SVC_Info: rate limit from %s exceeded, dropping request\n",
			FUNC6( from ) );
		return;
	}

	// Allow getinfo to be DoSed relatively easily, but prevent
	// excess outbound bandwidth usage when being flooded inbound
	if ( FUNC8( &outboundLeakyBucket, 10, 100 ) ) {
		FUNC1( "SVC_Info: rate limit exceeded, dropping request\n" );
		return;
	}

	/*
	 * Check whether Cmd_Argv(1) has a sane length. This was not done in the original Quake3 version which led
	 * to the Infostring bug discovered by Luigi Auriemma. See http://aluigi.altervista.org/ for the advisory.
	 */

	// A maximum challenge length of 128 should be more than plenty.
	if(FUNC10(FUNC0(1)) > 128)
		return;

	// don't count privateclients
	count = humans = 0;
	for ( i = sv_privateClients->integer ; i < sv_maxclients->integer ; i++ ) {
		if ( svs.clients[i].state >= CS_CONNECTED ) {
			count++;
			if (svs.clients[i].netchan.remoteAddress.type != NA_BOT) {
				humans++;
			}
		}
	}

	infostring[0] = 0;

	// echo back the parameter to status. so servers can use it as a challenge
	// to prevent timed spoofed reply packets that add ghost servers
	FUNC5( infostring, "challenge", FUNC0(1) );

	FUNC5( infostring, "gamename", com_gamename->string );

#ifdef LEGACY_PROTOCOL
	if(com_legacyprotocol->integer > 0)
		Info_SetValueForKey(infostring, "protocol", va("%i", com_legacyprotocol->integer));
	else
#endif
		FUNC5(infostring, "protocol", FUNC11("%i", com_protocol->integer));

	FUNC5( infostring, "hostname", sv_hostname->string );
	FUNC5( infostring, "mapname", sv_mapname->string );
	FUNC5( infostring, "clients", FUNC11("%i", count) );
	FUNC5(infostring, "g_humanplayers", FUNC11("%i", humans));
	FUNC5( infostring, "sv_maxclients", 
		FUNC11("%i", sv_maxclients->integer - sv_privateClients->integer ) );
	FUNC5( infostring, "gametype", FUNC11("%i", sv_gametype->integer ) );
	FUNC5( infostring, "pure", FUNC11("%i", sv_pure->integer ) );
	FUNC5(infostring, "g_needpass", FUNC11("%d", FUNC2("g_needpass")));

#ifdef USE_VOIP
	if (sv_voipProtocol->string && *sv_voipProtocol->string) {
		Info_SetValueForKey( infostring, "voip", sv_voipProtocol->string );
	}
#endif

	if( sv_minPing->integer ) {
		FUNC5( infostring, "minPing", FUNC11("%i", sv_minPing->integer) );
	}
	if( sv_maxPing->integer ) {
		FUNC5( infostring, "maxPing", FUNC11("%i", sv_maxPing->integer) );
	}
	gamedir = FUNC3( "fs_game" );
	if( *gamedir ) {
		FUNC5( infostring, "game", gamedir );
	}

	FUNC7( NS_SERVER, from, "infoResponse\n%s", infostring );
}