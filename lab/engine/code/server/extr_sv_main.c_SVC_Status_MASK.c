#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  status ;
struct TYPE_6__ {int /*<<< orphan*/ * persistant; } ;
typedef  TYPE_1__ playerState_t ;
typedef  int /*<<< orphan*/  player ;
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  name; int /*<<< orphan*/  ping; } ;
typedef  TYPE_2__ client_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {TYPE_2__* clients; } ;

/* Variables and functions */
 scalar_t__ CS_CONNECTED ; 
 int /*<<< orphan*/  CVAR_SERVERINFO ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int MAX_INFO_STRING ; 
 int MAX_MSGLEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  NS_SERVER ; 
 size_t PERS_SCORE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* FUNC10 (int) ; 
 int /*<<< orphan*/  outboundLeakyBucket ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 
 TYPE_4__* sv_maxclients ; 
 TYPE_3__ svs ; 

__attribute__((used)) static void FUNC13( netadr_t from ) {
	char	player[1024];
	char	status[MAX_MSGLEN];
	int		i;
	client_t	*cl;
	playerState_t	*ps;
	int		statusLength;
	int		playerLength;
	char	infostring[MAX_INFO_STRING];

	// ignore if we are in single player
	if ( FUNC4( "g_gametype" ) == GT_SINGLE_PLAYER || FUNC4("ui_singlePlayerActive")) {
		return;
	}

	// Prevent using getstatus as an amplifier
	if ( FUNC9( from, 10, 1000 ) ) {
		FUNC1( "SVC_Status: rate limit from %s exceeded, dropping request\n",
			FUNC6( from ) );
		return;
	}

	// Allow getstatus to be DoSed relatively easily, but prevent
	// excess outbound bandwidth usage when being flooded inbound
	if ( FUNC8( &outboundLeakyBucket, 10, 100 ) ) {
		FUNC1( "SVC_Status: rate limit exceeded, dropping request\n" );
		return;
	}

	// A maximum challenge length of 128 should be more than plenty.
	if(FUNC12(FUNC0(1)) > 128)
		return;

	FUNC11( infostring, FUNC3( CVAR_SERVERINFO ) );

	// echo back the parameter to status. so master servers can use it as a challenge
	// to prevent timed spoofed reply packets that add ghost servers
	FUNC5( infostring, "challenge", FUNC0(1) );

	status[0] = 0;
	statusLength = 0;

	for (i=0 ; i < sv_maxclients->integer ; i++) {
		cl = &svs.clients[i];
		if ( cl->state >= CS_CONNECTED ) {
			ps = FUNC10( i );
			FUNC2 (player, sizeof(player), "%i %i \"%s\"\n", 
				ps->persistant[PERS_SCORE], cl->ping, cl->name);
			playerLength = FUNC12(player);
			if (statusLength + playerLength >= sizeof(status) ) {
				break;		// can't hold any more
			}
			FUNC11 (status + statusLength, player);
			statusLength += playerLength;
		}
	}

	FUNC7( NS_SERVER, from, "statusResponse\n%s\n%s", infostring, status );
}