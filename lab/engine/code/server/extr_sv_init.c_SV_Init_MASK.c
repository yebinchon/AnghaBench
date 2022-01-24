#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ integer; } ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int CVAR_ROM ; 
 int CVAR_SERVERINFO ; 
 int CVAR_SYSTEMINFO ; 
 int CVAR_TEMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,char*,int) ; 
 char* MASTER_SERVER_NAME ; 
 int MAX_MASTER_SERVERS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  qtrue ; 
 void* sv_allowDownload ; 
 void* sv_banFile ; 
 void* sv_dlRate ; 
 void* sv_floodProtect ; 
 void* sv_fps ; 
 void* sv_gametype ; 
 void* sv_hostname ; 
 void* sv_killserver ; 
 void* sv_lanForceRate ; 
 void* sv_mapChecksum ; 
 void* sv_mapname ; 
 void** sv_master ; 
 void* sv_maxPing ; 
 void* sv_maxRate ; 
 void* sv_maxclients ; 
 void* sv_minPing ; 
 void* sv_minRate ; 
 void* sv_padPackets ; 
 void* sv_privateClients ; 
 void* sv_privatePassword ; 
 void* sv_pure ; 
 void* sv_rateLimit ; 
 void* sv_rconPassword ; 
 void* sv_reconnectlimit ; 
 void* sv_serverid ; 
 void* sv_showloss ; 
 void* sv_strictAuth ; 
 void* sv_timeout ; 
 TYPE_1__* sv_voip ; 
 void* sv_voipProtocol ; 
 void* sv_zombietime ; 
 char* FUNC6 (char*,int) ; 

void FUNC7 (void)
{
	int index;

	FUNC3 ();

	// serverinfo vars
	FUNC2 ("dmflags", "0", CVAR_SERVERINFO);
	FUNC2 ("fraglimit", "20", CVAR_SERVERINFO);
	FUNC2 ("timelimit", "0", CVAR_SERVERINFO);
	sv_gametype = FUNC2 ("g_gametype", "0", CVAR_SERVERINFO | CVAR_LATCH );
	FUNC2 ("sv_keywords", "", CVAR_SERVERINFO);
	sv_mapname = FUNC2 ("mapname", "nomap", CVAR_SERVERINFO | CVAR_ROM);
	sv_privateClients = FUNC2 ("sv_privateClients", "0", CVAR_SERVERINFO);
	sv_hostname = FUNC2 ("sv_hostname", "noname", CVAR_SERVERINFO | CVAR_ARCHIVE );
	sv_maxclients = FUNC2 ("sv_maxclients", "8", CVAR_SERVERINFO | CVAR_LATCH);

	sv_rateLimit = FUNC2 ("sv_rateLimit", "1", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_minRate = FUNC2 ("sv_minRate", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_minRate = FUNC2 ("sv_minRate", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_maxRate = FUNC2 ("sv_maxRate", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_dlRate = FUNC2("sv_dlRate", "100", CVAR_ARCHIVE | CVAR_SERVERINFO);
	sv_minPing = FUNC2 ("sv_minPing", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_maxPing = FUNC2 ("sv_maxPing", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_floodProtect = FUNC2 ("sv_floodProtect", "1", CVAR_ARCHIVE | CVAR_SERVERINFO );

	// systeminfo
	FUNC2 ("sv_cheats", "1", CVAR_SYSTEMINFO | CVAR_ROM );
	sv_serverid = FUNC2 ("sv_serverid", "0", CVAR_SYSTEMINFO | CVAR_ROM );
	sv_pure = FUNC2 ("sv_pure", "1", CVAR_SYSTEMINFO );
#ifdef USE_VOIP
	sv_voip = Cvar_Get("sv_voip", "1", CVAR_LATCH);
	Cvar_CheckRange(sv_voip, 0, 1, qtrue);
	sv_voipProtocol = Cvar_Get("sv_voipProtocol", sv_voip->integer ? "opus" : "", CVAR_SYSTEMINFO | CVAR_ROM );
#endif
	FUNC2 ("sv_paks", "", CVAR_SYSTEMINFO | CVAR_ROM );
	FUNC2 ("sv_pakNames", "", CVAR_SYSTEMINFO | CVAR_ROM );
	FUNC2 ("sv_referencedPaks", "", CVAR_SYSTEMINFO | CVAR_ROM );
	FUNC2 ("sv_referencedPakNames", "", CVAR_SYSTEMINFO | CVAR_ROM );

	// server vars
	sv_rconPassword = FUNC2 ("rconPassword", "", CVAR_TEMP );
	sv_privatePassword = FUNC2 ("sv_privatePassword", "", CVAR_TEMP );
	sv_fps = FUNC2 ("sv_fps", "20", CVAR_TEMP );
	sv_timeout = FUNC2 ("sv_timeout", "200", CVAR_TEMP );
	sv_zombietime = FUNC2 ("sv_zombietime", "2", CVAR_TEMP );
	FUNC2 ("nextmap", "", CVAR_TEMP );

	sv_allowDownload = FUNC2 ("sv_allowDownload", "0", CVAR_SERVERINFO);
	FUNC2 ("sv_dlURL", "", CVAR_SERVERINFO | CVAR_ARCHIVE);
	
	sv_master[0] = FUNC2("sv_master1", MASTER_SERVER_NAME, 0);
	sv_master[1] = FUNC2("sv_master2", "master.ioquake3.org", 0);
	for(index = 2; index < MAX_MASTER_SERVERS; index++)
		sv_master[index] = FUNC2(FUNC6("sv_master%d", index + 1), "", CVAR_ARCHIVE);

	sv_reconnectlimit = FUNC2 ("sv_reconnectlimit", "3", 0);
	sv_showloss = FUNC2 ("sv_showloss", "0", 0);
	sv_padPackets = FUNC2 ("sv_padPackets", "0", 0);
	sv_killserver = FUNC2 ("sv_killserver", "0", 0);
	sv_mapChecksum = FUNC2 ("sv_mapChecksum", "", CVAR_ROM);
	sv_lanForceRate = FUNC2 ("sv_lanForceRate", "1", CVAR_ARCHIVE );
#ifndef STANDALONE
	sv_strictAuth = FUNC2 ("sv_strictAuth", "1", CVAR_ARCHIVE );
#endif
	sv_banFile = FUNC2("sv_banFile", "serverbans.dat", CVAR_ARCHIVE);

	// initialize bot cvars so they are listed and can be set before loading the botlib
	FUNC5();

	// init the botlib here because we need the pre-compiler in the UI
	FUNC4();
	
	// Load saved bans
	FUNC0("rehashbans\n");
}