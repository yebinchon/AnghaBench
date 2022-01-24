#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {TYPE_2__* client; } ;
typedef  TYPE_3__ gentity_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_34__ {scalar_t__ intermissiontime; } ;
struct TYPE_31__ {scalar_t__ connected; scalar_t__ localClient; } ;
struct TYPE_32__ {TYPE_1__ pers; } ;

/* Variables and functions */
 scalar_t__ CON_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 
 int MAX_TOKEN_CHARS ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  SAY_ALL ; 
 int /*<<< orphan*/  SAY_TEAM ; 
 TYPE_3__* g_entities ; 
 TYPE_4__ level ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*) ; 

void FUNC29( int clientNum ) {
	gentity_t *ent;
	char	cmd[MAX_TOKEN_CHARS];

	ent = g_entities + clientNum;
	if (!ent->client || ent->client->pers.connected != CON_CONNECTED) {
		if (ent->client && ent->client->pers.localClient) {
			// Handle early team command sent by UI when starting a local
			// team play game.
			FUNC26( 0, cmd, sizeof( cmd ) );
			if (FUNC25 (cmd, "team") == 0) {
				FUNC18 (ent);
			}
		}
		return;		// not fully in game yet
	}


	FUNC26( 0, cmd, sizeof( cmd ) );

	if (FUNC25 (cmd, "say") == 0) {
		FUNC12 (ent, SAY_ALL, qfalse);
		return;
	}
	if (FUNC25 (cmd, "say_team") == 0) {
		FUNC12 (ent, SAY_TEAM, qfalse);
		return;
	}
	if (FUNC25 (cmd, "tell") == 0) {
		FUNC19 ( ent );
		return;
	}
#ifdef MISSIONPACK
	if (Q_stricmp (cmd, "vsay") == 0) {
		Cmd_Voice_f (ent, SAY_ALL, qfalse, qfalse);
		return;
	}
	if (Q_stricmp (cmd, "vsay_team") == 0) {
		Cmd_Voice_f (ent, SAY_TEAM, qfalse, qfalse);
		return;
	}
	if (Q_stricmp (cmd, "vtell") == 0) {
		Cmd_VoiceTell_f ( ent, qfalse );
		return;
	}
	if (Q_stricmp (cmd, "vosay") == 0) {
		Cmd_Voice_f (ent, SAY_ALL, qfalse, qtrue);
		return;
	}
	if (Q_stricmp (cmd, "vosay_team") == 0) {
		Cmd_Voice_f (ent, SAY_TEAM, qfalse, qtrue);
		return;
	}
	if (Q_stricmp (cmd, "votell") == 0) {
		Cmd_VoiceTell_f ( ent, qtrue );
		return;
	}
	if (Q_stricmp (cmd, "vtaunt") == 0) {
		Cmd_VoiceTaunt_f ( ent );
		return;
	}
#endif
	if (FUNC25 (cmd, "score") == 0) {
		FUNC13 (ent);
		return;
	}

	// ignore all other commands when at intermission
	if (level.intermissiontime) {
		FUNC12 (ent, qfalse, qtrue);
		return;
	}

	if (FUNC25 (cmd, "give") == 0)
		FUNC5 (ent);
	else if (FUNC25 (cmd, "god") == 0)
		FUNC6 (ent);
	else if (FUNC25 (cmd, "notarget") == 0)
		FUNC10 (ent);
	else if (FUNC25 (cmd, "noclip") == 0)
		FUNC9 (ent);
	else if (FUNC25 (cmd, "kill") == 0)
		FUNC7 (ent);
	else if (FUNC25 (cmd, "teamtask") == 0)
		FUNC16 (ent);
	else if (FUNC25 (cmd, "levelshot") == 0)
		FUNC8 (ent);
	else if (FUNC25 (cmd, "follow") == 0)
		FUNC3 (ent);
	else if (FUNC25 (cmd, "follownext") == 0)
		FUNC2 (ent, 1);
	else if (FUNC25 (cmd, "followprev") == 0)
		FUNC2 (ent, -1);
	else if (FUNC25 (cmd, "team") == 0)
		FUNC18 (ent);
	else if (FUNC25 (cmd, "where") == 0)
		FUNC24 (ent);
	else if (FUNC25 (cmd, "callvote") == 0)
		FUNC1 (ent);
	else if (FUNC25 (cmd, "vote") == 0)
		FUNC23 (ent);
	else if (FUNC25 (cmd, "callteamvote") == 0)
		FUNC0 (ent);
	else if (FUNC25 (cmd, "teamvote") == 0)
		FUNC17 (ent);
	else if (FUNC25 (cmd, "gc") == 0)
		FUNC4( ent );
	else if (FUNC25 (cmd, "setviewpos") == 0)
		FUNC14( ent );
	else if (FUNC25 (cmd, "stats") == 0)
		FUNC15( ent );
	else if (FUNC25 (cmd, "dm_pickup") == 0)
		FUNC11( ent );
	else
		FUNC27( clientNum, FUNC28("print \"unknown cmd %s\n\"", cmd ) );
}