#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CVAR_CHEAT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC1(void) {

	FUNC0("bot_enable", "1", 0);						//enable the bot
	FUNC0("bot_developer", "0", CVAR_CHEAT);			//bot developer mode
	FUNC0("bot_debug", "0", CVAR_CHEAT);				//enable bot debugging
	FUNC0("bot_maxdebugpolys", "2", 0);				//maximum number of debug polys
	FUNC0("bot_groundonly", "1", 0);					//only show ground faces of areas
	FUNC0("bot_reachability", "0", 0);				//show all reachabilities to other areas
	FUNC0("bot_visualizejumppads", "0", CVAR_CHEAT);	//show jumppads
	FUNC0("bot_forceclustering", "0", 0);			//force cluster calculations
	FUNC0("bot_forcereachability", "0", 0);			//force reachability calculations
	FUNC0("bot_forcewrite", "0", 0);					//force writing aas file
	FUNC0("bot_aasoptimize", "0", 0);				//no aas file optimisation
	FUNC0("bot_saveroutingcache", "0", 0);			//save routing cache
	FUNC0("bot_thinktime", "100", CVAR_CHEAT);		//msec the bots thinks
	FUNC0("bot_reloadcharacters", "0", 0);			//reload the bot characters each time
	FUNC0("bot_testichat", "0", 0);					//test ichats
	FUNC0("bot_testrchat", "0", 0);					//test rchats
	FUNC0("bot_testsolid", "0", CVAR_CHEAT);			//test for solid areas
	FUNC0("bot_testclusters", "0", CVAR_CHEAT);		//test the AAS clusters
	FUNC0("bot_fastchat", "0", 0);					//fast chatting bots
	FUNC0("bot_nochat", "0", 0);						//disable chats
	FUNC0("bot_pause", "0", CVAR_CHEAT);				//pause the bots thinking
	FUNC0("bot_report", "0", CVAR_CHEAT);			//get a full report in ctf
	FUNC0("bot_grapple", "0", 0);					//enable grapple
	FUNC0("bot_rocketjump", "1", 0);					//enable rocket jumping
	FUNC0("bot_challenge", "0", 0);					//challenging bot
	FUNC0("bot_minplayers", "0", 0);					//minimum players in a team or the game
	FUNC0("bot_interbreedchar", "", CVAR_CHEAT);		//bot character used for interbreeding
	FUNC0("bot_interbreedbots", "10", CVAR_CHEAT);	//number of bots used for interbreeding
	FUNC0("bot_interbreedcycle", "20", CVAR_CHEAT);	//bot interbreeding cycle
	FUNC0("bot_interbreedwrite", "", CVAR_CHEAT);	//write interbreeded bots to this file
}