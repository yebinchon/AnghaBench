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
typedef  int /*<<< orphan*/  model ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_HARVESTER ; 
 scalar_t__ GT_OBELISK ; 
 int /*<<< orphan*/  PRT_WARNING ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  blueobelisk ; 
 int /*<<< orphan*/  bot_challenge ; 
 int /*<<< orphan*/  bot_fastchat ; 
 int /*<<< orphan*/  bot_grapple ; 
 int /*<<< orphan*/  bot_nochat ; 
 int /*<<< orphan*/  bot_predictobstacles ; 
 int /*<<< orphan*/  bot_rocketjump ; 
 int /*<<< orphan*/  bot_testrchat ; 
 int /*<<< orphan*/  ctf_blueflag ; 
 int /*<<< orphan*/  ctf_neutralflag ; 
 int /*<<< orphan*/  ctf_redflag ; 
 int /*<<< orphan*/  g_spSkill ; 
 scalar_t__ gametype ; 
 int max_bspmodelindex ; 
 int /*<<< orphan*/  neutralobelisk ; 
 int /*<<< orphan*/  redobelisk ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,int) ; 
 scalar_t__ FUNC6 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 

void FUNC9(void) {
	int ent, modelnum;
	char model[128];

	gametype = FUNC8("g_gametype");

	FUNC7(&bot_rocketjump, "bot_rocketjump", "1", 0);
	FUNC7(&bot_grapple, "bot_grapple", "0", 0);
	FUNC7(&bot_fastchat, "bot_fastchat", "0", 0);
	FUNC7(&bot_nochat, "bot_nochat", "0", 0);
	FUNC7(&bot_testrchat, "bot_testrchat", "0", 0);
	FUNC7(&bot_challenge, "bot_challenge", "0", 0);
	FUNC7(&bot_predictobstacles, "bot_predictobstacles", "1", 0);
	FUNC7(&g_spSkill, "g_spSkill", "2", 0);
	//
	if (gametype == GT_CTF) {
		if (FUNC6(-1, "Red Flag", &ctf_redflag) < 0)
			FUNC0(PRT_WARNING, "CTF without Red Flag\n");
		if (FUNC6(-1, "Blue Flag", &ctf_blueflag) < 0)
			FUNC0(PRT_WARNING, "CTF without Blue Flag\n");
	}
#ifdef MISSIONPACK
	else if (gametype == GT_1FCTF) {
		if (trap_BotGetLevelItemGoal(-1, "Neutral Flag", &ctf_neutralflag) < 0)
			BotAI_Print(PRT_WARNING, "One Flag CTF without Neutral Flag\n");
		if (trap_BotGetLevelItemGoal(-1, "Red Flag", &ctf_redflag) < 0)
			BotAI_Print(PRT_WARNING, "One Flag CTF without Red Flag\n");
		if (trap_BotGetLevelItemGoal(-1, "Blue Flag", &ctf_blueflag) < 0)
			BotAI_Print(PRT_WARNING, "One Flag CTF without Blue Flag\n");
	}
	else if (gametype == GT_OBELISK) {
		if (trap_BotGetLevelItemGoal(-1, "Red Obelisk", &redobelisk) < 0)
			BotAI_Print(PRT_WARNING, "Overload without Red Obelisk\n");
		BotSetEntityNumForGoal(&redobelisk, "team_redobelisk");
		if (trap_BotGetLevelItemGoal(-1, "Blue Obelisk", &blueobelisk) < 0)
			BotAI_Print(PRT_WARNING, "Overload without Blue Obelisk\n");
		BotSetEntityNumForGoal(&blueobelisk, "team_blueobelisk");
	}
	else if (gametype == GT_HARVESTER) {
		if (trap_BotGetLevelItemGoal(-1, "Red Obelisk", &redobelisk) < 0)
			BotAI_Print(PRT_WARNING, "Harvester without Red Obelisk\n");
		BotSetEntityNumForGoal(&redobelisk, "team_redobelisk");
		if (trap_BotGetLevelItemGoal(-1, "Blue Obelisk", &blueobelisk) < 0)
			BotAI_Print(PRT_WARNING, "Harvester without Blue Obelisk\n");
		BotSetEntityNumForGoal(&blueobelisk, "team_blueobelisk");
		if (trap_BotGetLevelItemGoal(-1, "Neutral Obelisk", &neutralobelisk) < 0)
			BotAI_Print(PRT_WARNING, "Harvester without Neutral Obelisk\n");
		BotSetEntityNumForGoal(&neutralobelisk, "team_neutralobelisk");
	}
#endif

	max_bspmodelindex = 0;
	for (ent = FUNC4(0); ent; ent = FUNC4(ent)) {
		if (!FUNC5(ent, "model", model, sizeof(model))) continue;
		if (model[0] == '*') {
			modelnum = FUNC3(model+1);
			if (modelnum > max_bspmodelindex)
				max_bspmodelindex = modelnum;
		}
	}
	//initialize the waypoint heap
	FUNC1();
}