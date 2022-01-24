#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_BanAddr_f ; 
 int /*<<< orphan*/  SV_BanDel_f ; 
 int /*<<< orphan*/  SV_BanNum_f ; 
 int /*<<< orphan*/  SV_Ban_f ; 
 int /*<<< orphan*/  SV_CompleteMapName ; 
 int /*<<< orphan*/  SV_CompletePlayerName ; 
 int /*<<< orphan*/  SV_ConSay_f ; 
 int /*<<< orphan*/  SV_ConSayto_f ; 
 int /*<<< orphan*/  SV_ConTell_f ; 
 int /*<<< orphan*/  SV_DumpUser_f ; 
 int /*<<< orphan*/  SV_ExceptAddr_f ; 
 int /*<<< orphan*/  SV_ExceptDel_f ; 
 int /*<<< orphan*/  SV_FlushBans_f ; 
 int /*<<< orphan*/  SV_Heartbeat_f ; 
 int /*<<< orphan*/  SV_KickAll_f ; 
 int /*<<< orphan*/  SV_KickBots_f ; 
 int /*<<< orphan*/  SV_KickNum_f ; 
 int /*<<< orphan*/  SV_Kick_f ; 
 int /*<<< orphan*/  SV_KillServer_f ; 
 int /*<<< orphan*/  SV_ListBans_f ; 
 int /*<<< orphan*/  SV_MapRestart_f ; 
 int /*<<< orphan*/  SV_Map_f ; 
 int /*<<< orphan*/  SV_RehashBans_f ; 
 int /*<<< orphan*/  SV_SectorList_f ; 
 int /*<<< orphan*/  SV_Serverinfo_f ; 
 int /*<<< orphan*/  SV_Status_f ; 
 int /*<<< orphan*/  SV_Systeminfo_f ; 
 TYPE_2__* com_dedicated ; 
 TYPE_1__* com_standalone ; 
 scalar_t__ qtrue ; 

void FUNC2( void ) {
	static qboolean	initialized;

	if ( initialized ) {
		return;
	}
	initialized = qtrue;

	FUNC0 ("heartbeat", SV_Heartbeat_f);
	FUNC0 ("kick", SV_Kick_f);
#ifndef STANDALONE
	if(!com_standalone->integer)
	{
		FUNC0 ("banUser", SV_Ban_f);
		FUNC0 ("banClient", SV_BanNum_f);
	}
#endif
	FUNC0 ("kickbots", SV_KickBots_f);
	FUNC0 ("kickall", SV_KickAll_f);
	FUNC0 ("kicknum", SV_KickNum_f);
	FUNC0 ("clientkick", SV_KickNum_f); // Legacy command
	FUNC0 ("status", SV_Status_f);
	FUNC0 ("serverinfo", SV_Serverinfo_f);
	FUNC0 ("systeminfo", SV_Systeminfo_f);
	FUNC0 ("dumpuser", SV_DumpUser_f);
	FUNC0 ("map_restart", SV_MapRestart_f);
	FUNC0 ("sectorlist", SV_SectorList_f);
	FUNC0 ("map", SV_Map_f);
	FUNC1( "map", SV_CompleteMapName );
#ifndef PRE_RELEASE_DEMO
	FUNC0 ("devmap", SV_Map_f);
	FUNC1( "devmap", SV_CompleteMapName );
	FUNC0 ("spmap", SV_Map_f);
	FUNC1( "spmap", SV_CompleteMapName );
	FUNC0 ("spdevmap", SV_Map_f);
	FUNC1( "spdevmap", SV_CompleteMapName );
#endif
	FUNC0 ("killserver", SV_KillServer_f);
	if( com_dedicated->integer ) {
		FUNC0 ("say", SV_ConSay_f);
		FUNC0 ("tell", SV_ConTell_f);
		FUNC0 ("sayto", SV_ConSayto_f);
		FUNC1( "sayto", SV_CompletePlayerName );
	}
	
	FUNC0("rehashbans", SV_RehashBans_f);
	FUNC0("listbans", SV_ListBans_f);
	FUNC0("banaddr", SV_BanAddr_f);
	FUNC0("exceptaddr", SV_ExceptAddr_f);
	FUNC0("bandel", SV_BanDel_f);
	FUNC0("exceptdel", SV_ExceptDel_f);
	FUNC0("flushbans", SV_FlushBans_f);
}