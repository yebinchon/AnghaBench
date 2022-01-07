
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int model ;


 int BotAI_Print (int ,char*) ;
 int BotInitWaypoints () ;
 int BotSetEntityNumForGoal (int *,char*) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 int PRT_WARNING ;
 int atoi (char*) ;
 int blueobelisk ;
 int bot_challenge ;
 int bot_fastchat ;
 int bot_grapple ;
 int bot_nochat ;
 int bot_predictobstacles ;
 int bot_rocketjump ;
 int bot_testrchat ;
 int ctf_blueflag ;
 int ctf_neutralflag ;
 int ctf_redflag ;
 int g_spSkill ;
 scalar_t__ gametype ;
 int max_bspmodelindex ;
 int neutralobelisk ;
 int redobelisk ;
 int trap_AAS_NextBSPEntity (int) ;
 int trap_AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 scalar_t__ trap_BotGetLevelItemGoal (int,char*,int *) ;
 int trap_Cvar_Register (int *,char*,char*,int ) ;
 scalar_t__ trap_Cvar_VariableIntegerValue (char*) ;

void BotSetupDeathmatchAI(void) {
 int ent, modelnum;
 char model[128];

 gametype = trap_Cvar_VariableIntegerValue("g_gametype");

 trap_Cvar_Register(&bot_rocketjump, "bot_rocketjump", "1", 0);
 trap_Cvar_Register(&bot_grapple, "bot_grapple", "0", 0);
 trap_Cvar_Register(&bot_fastchat, "bot_fastchat", "0", 0);
 trap_Cvar_Register(&bot_nochat, "bot_nochat", "0", 0);
 trap_Cvar_Register(&bot_testrchat, "bot_testrchat", "0", 0);
 trap_Cvar_Register(&bot_challenge, "bot_challenge", "0", 0);
 trap_Cvar_Register(&bot_predictobstacles, "bot_predictobstacles", "1", 0);
 trap_Cvar_Register(&g_spSkill, "g_spSkill", "2", 0);

 if (gametype == GT_CTF) {
  if (trap_BotGetLevelItemGoal(-1, "Red Flag", &ctf_redflag) < 0)
   BotAI_Print(PRT_WARNING, "CTF without Red Flag\n");
  if (trap_BotGetLevelItemGoal(-1, "Blue Flag", &ctf_blueflag) < 0)
   BotAI_Print(PRT_WARNING, "CTF without Blue Flag\n");
 }
 max_bspmodelindex = 0;
 for (ent = trap_AAS_NextBSPEntity(0); ent; ent = trap_AAS_NextBSPEntity(ent)) {
  if (!trap_AAS_ValueForBSPEpairKey(ent, "model", model, sizeof(model))) continue;
  if (model[0] == '*') {
   modelnum = atoi(model+1);
   if (modelnum > max_bspmodelindex)
    max_bspmodelindex = modelnum;
  }
 }

 BotInitWaypoints();
}
