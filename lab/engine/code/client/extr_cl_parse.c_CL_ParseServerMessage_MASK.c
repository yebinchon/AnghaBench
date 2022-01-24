#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ cursize; scalar_t__ readcount; } ;
typedef  TYPE_1__ msg_t ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {scalar_t__ reliableAcknowledge; scalar_t__ reliableSequence; int /*<<< orphan*/  voipEnabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 scalar_t__ MAX_RELIABLE_COMMANDS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 TYPE_3__* cl_shownet ; 
 TYPE_2__ clc ; 
 int qtrue ; 
 int svc_EOF ; 
#define  svc_download 134 
#define  svc_gamestate 133 
#define  svc_nop 132 
#define  svc_serverCommand 131 
#define  svc_snapshot 130 
 char** svc_strings ; 
#define  svc_voipOpus 129 
#define  svc_voipSpeex 128 

void FUNC11( msg_t *msg ) {
	int			cmd;

	if ( cl_shownet->integer == 1 ) {
		FUNC6 ("%i ",msg->cursize);
	} else if ( cl_shownet->integer >= 2 ) {
		FUNC6 ("------------------\n");
	}

	FUNC7(msg);

	// get the reliable sequence acknowledge number
	clc.reliableAcknowledge = FUNC9( msg );
	// 
	if ( clc.reliableAcknowledge < clc.reliableSequence - MAX_RELIABLE_COMMANDS ) {
		clc.reliableAcknowledge = clc.reliableSequence;
	}

	//
	// parse the message
	//
	while ( 1 ) {
		if ( msg->readcount > msg->cursize ) {
			FUNC5 (ERR_DROP,"CL_ParseServerMessage: read past end of server message");
			break;
		}

		cmd = FUNC8( msg );

		if (cmd == svc_EOF) {
			FUNC10( msg, "END OF MESSAGE" );
			break;
		}

		if ( cl_shownet->integer >= 2 ) {
			if ( (cmd < 0) || (!svc_strings[cmd]) ) {
				FUNC6( "%3i:BAD CMD %i\n", msg->readcount-1, cmd );
			} else {
				FUNC10( msg, svc_strings[cmd] );
			}
		}
	
	// other commands
		switch ( cmd ) {
		default:
			FUNC5 (ERR_DROP,"CL_ParseServerMessage: Illegible server message");
			break;			
		case svc_nop:
			break;
		case svc_serverCommand:
			FUNC0( msg );
			break;
		case svc_gamestate:
			FUNC2( msg );
			break;
		case svc_snapshot:
			FUNC3( msg );
			break;
		case svc_download:
			FUNC1( msg );
			break;
		case svc_voipSpeex:
#ifdef USE_VOIP
			CL_ParseVoip( msg, qtrue );
#endif
			break;
		case svc_voipOpus:
#ifdef USE_VOIP
			CL_ParseVoip( msg, !clc.voipEnabled );
#endif
			break;
		}
	}
}