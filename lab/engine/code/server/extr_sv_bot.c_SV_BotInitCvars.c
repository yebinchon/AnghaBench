
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_CHEAT ;
 int Cvar_Get (char*,char*,int ) ;

void SV_BotInitCvars(void) {

 Cvar_Get("bot_enable", "1", 0);
 Cvar_Get("bot_developer", "0", CVAR_CHEAT);
 Cvar_Get("bot_debug", "0", CVAR_CHEAT);
 Cvar_Get("bot_maxdebugpolys", "2", 0);
 Cvar_Get("bot_groundonly", "1", 0);
 Cvar_Get("bot_reachability", "0", 0);
 Cvar_Get("bot_visualizejumppads", "0", CVAR_CHEAT);
 Cvar_Get("bot_forceclustering", "0", 0);
 Cvar_Get("bot_forcereachability", "0", 0);
 Cvar_Get("bot_forcewrite", "0", 0);
 Cvar_Get("bot_aasoptimize", "0", 0);
 Cvar_Get("bot_saveroutingcache", "0", 0);
 Cvar_Get("bot_thinktime", "100", CVAR_CHEAT);
 Cvar_Get("bot_reloadcharacters", "0", 0);
 Cvar_Get("bot_testichat", "0", 0);
 Cvar_Get("bot_testrchat", "0", 0);
 Cvar_Get("bot_testsolid", "0", CVAR_CHEAT);
 Cvar_Get("bot_testclusters", "0", CVAR_CHEAT);
 Cvar_Get("bot_fastchat", "0", 0);
 Cvar_Get("bot_nochat", "0", 0);
 Cvar_Get("bot_pause", "0", CVAR_CHEAT);
 Cvar_Get("bot_report", "0", CVAR_CHEAT);
 Cvar_Get("bot_grapple", "0", 0);
 Cvar_Get("bot_rocketjump", "1", 0);
 Cvar_Get("bot_challenge", "0", 0);
 Cvar_Get("bot_minplayers", "0", 0);
 Cvar_Get("bot_interbreedchar", "", CVAR_CHEAT);
 Cvar_Get("bot_interbreedbots", "10", CVAR_CHEAT);
 Cvar_Get("bot_interbreedcycle", "20", CVAR_CHEAT);
 Cvar_Get("bot_interbreedwrite", "", CVAR_CHEAT);
}
