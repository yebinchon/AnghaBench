#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg_t ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ oldServerTime; int /*<<< orphan*/  name; void* gamestateMessageNum; void* messageAcknowledge; int /*<<< orphan*/  lastClientCommandString; int /*<<< orphan*/ * downloadName; void* reliableSequence; void* reliableAcknowledge; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_12__ {int serverId; int restartedServerId; } ;
struct TYPE_11__ {TYPE_1__* clients; } ;

/* Variables and functions */
 scalar_t__ CS_ACTIVE ; 
 scalar_t__ CS_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 void* MAX_RELIABLE_COMMANDS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int clc_EOF ; 
 int clc_clientCommand ; 
 int clc_move ; 
 int clc_moveNoDelta ; 
 int clc_voipOpus ; 
 int clc_voipSpeex ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ sv ; 
 TYPE_2__ svs ; 

void FUNC11( client_t *cl, msg_t *msg ) {
	int			c;
	int			serverId;

	FUNC2(msg);

	serverId = FUNC4( msg );
	cl->messageAcknowledge = FUNC4( msg );

	if (cl->messageAcknowledge < 0) {
		// usually only hackers create messages like this
		// it is more annoying for them to let them hanging
#ifndef NDEBUG
		FUNC6( cl, "DEBUG: illegible client message" );
#endif
		return;
	}

	cl->reliableAcknowledge = FUNC4( msg );

	// NOTE: when the client message is fux0red the acknowledgement numbers
	// can be out of range, this could cause the server to send thousands of server
	// commands which the server thinks are not yet acknowledged in SV_UpdateServerCommandsToClient
	if (cl->reliableAcknowledge < cl->reliableSequence - MAX_RELIABLE_COMMANDS) {
		// usually only hackers create messages like this
		// it is more annoying for them to let them hanging
#ifndef NDEBUG
		FUNC6( cl, "DEBUG: illegible client message" );
#endif
		cl->reliableAcknowledge = cl->reliableSequence;
		return;
	}
	// if this is a usercmd from a previous gamestate,
	// ignore it or retransmit the current gamestate
	// 
	// if the client was downloading, let it stay at whatever serverId and
	// gamestate it was at.  This allows it to keep downloading even when
	// the gamestate changes.  After the download is finished, we'll
	// notice and send it a new game state
	//
	// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=536
	// don't drop as long as previous command was a nextdl, after a dl is done, downloadName is set back to ""
	// but we still need to read the next message to move to next download or send gamestate
	// I don't like this hack though, it must have been working fine at some point, suspecting the fix is somewhere else
	if ( serverId != sv.serverId && !*cl->downloadName && !FUNC10(cl->lastClientCommandString, "nextdl") ) {
		if ( serverId >= sv.restartedServerId && serverId < sv.serverId ) { // TTimo - use a comparison here to catch multiple map_restart
			// they just haven't caught the map_restart yet
			FUNC0("%s : ignoring pre map_restart / outdated client message\n", cl->name);
			return;
		}
		// if we can tell that the client has dropped the last
		// gamestate we sent them, resend it
		if ( cl->state != CS_ACTIVE && cl->messageAcknowledge > cl->gamestateMessageNum ) {
			FUNC0( "%s : dropped gamestate, resending\n", cl->name );
			FUNC7( cl );
		}
		return;
	}

	// this client has acknowledged the new gamestate so it's
	// safe to start sending it the real time again
	if( cl->oldServerTime && serverId == sv.serverId ){
		FUNC0( "%s acknowledged gamestate\n", cl->name );
		cl->oldServerTime = 0;
	}

	// read optional clientCommand strings
	do {
		c = FUNC3( msg );

		if ( c == clc_EOF ) {
			break;
		}

		if ( c != clc_clientCommand ) {
			break;
		}
		if ( !FUNC5( cl, msg ) ) {
			return;	// we couldn't execute it because of the flood protection
		}
		if (cl->state == CS_ZOMBIE) {
			return;	// disconnect command
		}
	} while ( 1 );

	// skip legacy speex voip data
	if ( c == clc_voipSpeex ) {
#ifdef USE_VOIP
		SV_UserVoip( cl, msg, qtrue );
		c = MSG_ReadByte( msg );
#endif
	}

	// read optional voip data
	if ( c == clc_voipOpus ) {
#ifdef USE_VOIP
		SV_UserVoip( cl, msg, qfalse );
		c = MSG_ReadByte( msg );
#endif
	}

	// read the usercmd_t
	if ( c == clc_move ) {
		FUNC8( cl, msg, qtrue );
	} else if ( c == clc_moveNoDelta ) {
		FUNC8( cl, msg, qfalse );
	} else if ( c != clc_EOF ) {
		FUNC1( "WARNING: bad command byte for client %i\n", (int) (cl - svs.clients) );
	}
//	if ( msg->readcount != msg->cursize ) {
//		Com_Printf( "WARNING: Junk at end of packet for client %i\n", cl - svs.clients );
//	}
}