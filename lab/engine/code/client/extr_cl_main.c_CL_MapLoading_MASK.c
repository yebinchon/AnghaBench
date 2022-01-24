#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  gameState; } ;
struct TYPE_9__ {scalar_t__ state; int lastPacketSentTime; int /*<<< orphan*/  serverAddress; int /*<<< orphan*/  servername; int /*<<< orphan*/  connectTime; int /*<<< orphan*/ * serverMessage; } ;
struct TYPE_8__ {int /*<<< orphan*/ * updateInfoString; } ;
struct TYPE_7__ {int /*<<< orphan*/  integer; } ;
struct TYPE_6__ {scalar_t__ integer; } ;

/* Variables and functions */
 scalar_t__ CA_CHALLENGING ; 
 scalar_t__ CA_CONNECTED ; 
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  KEYCATCH_CONSOLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NA_UNSPEC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  RETRANSMIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_5__ cl ; 
 TYPE_4__ clc ; 
 TYPE_3__ cls ; 
 TYPE_2__* com_cl_running ; 
 TYPE_1__* com_dedicated ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC10( void ) {
	if ( com_dedicated->integer ) {
		clc.state = CA_DISCONNECTED;
		FUNC5( KEYCATCH_CONSOLE );
		return;
	}

	if ( !com_cl_running->integer ) {
		return;
	}

	FUNC3();
	FUNC5( 0 );

	// if we are already connected to the local host, stay connected
	if ( clc.state >= CA_CONNECTED && !FUNC7( clc.servername, "localhost" ) ) {
		clc.state = CA_CONNECTED;		// so the connect screen is drawn
		FUNC2( cls.updateInfoString, 0, sizeof( cls.updateInfoString ) );
		FUNC2( clc.serverMessage, 0, sizeof( clc.serverMessage ) );
		FUNC2( &cl.gameState, 0, sizeof( cl.gameState ) );
		clc.lastPacketSentTime = -9999;
		FUNC9();
	} else {
		// clear nextmap so the cinematic shutdown doesn't execute it
		FUNC4( "nextmap", "" );
		FUNC1( qtrue );
		FUNC8( clc.servername, "localhost", sizeof(clc.servername) );
		clc.state = CA_CHALLENGING;		// so the connect screen is drawn
		FUNC5( 0 );
		FUNC9();
		clc.connectTime = -RETRANSMIT_TIMEOUT;
		FUNC6( clc.servername, &clc.serverAddress, NA_UNSPEC);
		// we don't need a challenge on the localhost

		FUNC0();
	}
}