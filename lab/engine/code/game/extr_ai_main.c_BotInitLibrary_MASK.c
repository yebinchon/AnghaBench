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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {char* string; } ;
struct TYPE_3__ {int /*<<< orphan*/  maxclients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_GENTITIES ; 
 TYPE_2__ bot_developer ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

int FUNC7(void) {
	char buf[144];

	//set the maxclients and maxentities library variables before calling BotSetupLibrary
	FUNC0(buf, sizeof(buf), "%d", level.maxclients);
	FUNC5("maxclients", buf);
	FUNC0(buf, sizeof(buf), "%d", MAX_GENTITIES);
	FUNC5("maxentities", buf);
	//bsp checksum
	FUNC6("sv_mapChecksum", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("sv_mapChecksum", buf);
	//maximum number of aas links
	FUNC6("max_aaslinks", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("max_aaslinks", buf);
	//maximum number of items in a level
	FUNC6("max_levelitems", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("max_levelitems", buf);
	//game type
	FUNC6("g_gametype", buf, sizeof(buf));
	if (!FUNC2(buf)) FUNC1(buf, "0");
	FUNC5("g_gametype", buf);
	//bot developer mode and log file
	FUNC5("bot_developer", bot_developer.string);
	FUNC6("logfile", buf, sizeof(buf));
	FUNC5("log", buf);
	//no chatting
	FUNC6("bot_nochat", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("nochat", buf);
	//visualize jump pads
	FUNC6("bot_visualizejumppads", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("bot_visualizejumppads", buf);
	//forced clustering calculations
	FUNC6("bot_forceclustering", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("forceclustering", buf);
	//forced reachability calculations
	FUNC6("bot_forcereachability", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("forcereachability", buf);
	//force writing of AAS to file
	FUNC6("bot_forcewrite", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("forcewrite", buf);
	//no AAS optimization
	FUNC6("bot_aasoptimize", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("aasoptimize", buf);
	//
	FUNC6("bot_saveroutingcache", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("saveroutingcache", buf);
	//reload instead of cache bot character files
	FUNC6("bot_reloadcharacters", buf, sizeof(buf));
	if (!FUNC2(buf)) FUNC1(buf, "0");
	FUNC5("bot_reloadcharacters", buf);
	//base directory
	FUNC6("fs_basepath", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("basedir", buf);
	//game directory
	FUNC6("fs_game", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("gamedir", buf);
	//home directory
	FUNC6("fs_homepath", buf, sizeof(buf));
	if (FUNC2(buf)) FUNC5("homedir", buf);
	//
#ifdef MISSIONPACK
	trap_BotLibDefine("MISSIONPACK");
#endif
	//setup the bot library
	return FUNC4();
}