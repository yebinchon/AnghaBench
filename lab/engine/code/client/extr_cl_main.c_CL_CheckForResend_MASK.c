#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
struct TYPE_15__ {int state; scalar_t__ connectTime; int challenge; TYPE_7__ serverAddress; int /*<<< orphan*/  compat; int /*<<< orphan*/  connectPacketCount; scalar_t__ demoplaying; } ;
struct TYPE_14__ {scalar_t__ realtime; } ;
struct TYPE_13__ {int /*<<< orphan*/  string; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
#define  CA_CHALLENGING 129 
#define  CA_CONNECTING 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CVAR_USERINFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  NA_IP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_7__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_7__,char*,char*) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ RETRANSMIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__) ; 
 TYPE_6__ clc ; 
 TYPE_5__ cls ; 
 TYPE_4__* com_gamename ; 
 TYPE_3__* com_legacyprotocol ; 
 TYPE_2__* com_protocol ; 
 TYPE_1__* com_standalone ; 
 int /*<<< orphan*/  cvar_modifiedFlags ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

void FUNC12( void ) {
	int		port;
	char	info[MAX_INFO_STRING];
	char	data[MAX_INFO_STRING + 10];

	// don't send anything if playing back a demo
	if ( clc.demoplaying ) {
		return;
	}

	// resend if we haven't gotten a reply yet
	if ( clc.state != CA_CONNECTING && clc.state != CA_CHALLENGING ) {
		return;
	}

	if ( cls.realtime - clc.connectTime < RETRANSMIT_TIMEOUT ) {
		return;
	}

	clc.connectTime = cls.realtime;	// for retransmit requests
	clc.connectPacketCount++;


	switch ( clc.state ) {
	case CA_CONNECTING:
		// requesting a challenge .. IPv6 users always get in as authorize server supports no ipv6.
#ifndef STANDALONE
		if (!com_standalone->integer && clc.serverAddress.type == NA_IP && !FUNC9( clc.serverAddress ) )
			FUNC0();
#endif

		// The challenge request shall be followed by a client challenge so no malicious server can hijack this connection.
		// Add the gamename so the server knows we're running the correct game or can reject the client
		// with a meaningful message
		FUNC2(data, sizeof(data), "getchallenge %d %s", clc.challenge, com_gamename->string);

		FUNC7(NS_CLIENT, clc.serverAddress, "%s", data);
		break;
		
	case CA_CHALLENGING:
		// sending back the challenge
		port = FUNC4 ("net_qport");

		FUNC8( info, FUNC3( CVAR_USERINFO ), sizeof( info ) );
		
#ifdef LEGACY_PROTOCOL
		if(com_legacyprotocol->integer == com_protocol->integer)
			clc.compat = qtrue;

		if(clc.compat)
			Info_SetValueForKey(info, "protocol", va("%i", com_legacyprotocol->integer));
		else
#endif
			FUNC5(info, "protocol", FUNC11("%i", com_protocol->integer));
		FUNC5( info, "qport", FUNC11("%i", port ) );
		FUNC5( info, "challenge", FUNC11("%i", clc.challenge ) );
		
		FUNC2( data, sizeof(data), "connect \"%s\"", info );
		FUNC6( NS_CLIENT, clc.serverAddress, (byte *) data, FUNC10 ( data ) );
		// the most current userinfo has been sent, so watch for any
		// newer changes to userinfo variables
		cvar_modifiedFlags &= ~CVAR_USERINFO;
		break;

	default:
		FUNC1( ERR_FATAL, "CL_CheckForResend: bad clc.state" );
	}
}