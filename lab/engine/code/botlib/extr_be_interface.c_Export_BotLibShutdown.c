
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* botlibsetup; } ;


 int AAS_Shutdown () ;
 int BLERR_LIBRARYNOTSETUP ;
 int BLERR_NOERROR ;
 int BotLibSetup (char*) ;
 int BotShutdownCharacters () ;
 int BotShutdownChatAI () ;
 int BotShutdownGoalAI () ;
 int BotShutdownMoveAI () ;
 int BotShutdownWeaponAI () ;
 int BotShutdownWeights () ;
 int EA_Shutdown () ;
 int LibVarDeAllocAll () ;
 int Log_Shutdown () ;
 int PC_CheckOpenSourceHandles () ;
 int PC_RemoveAllGlobalDefines () ;
 int PrintMemoryLabels () ;
 TYPE_1__ botlibglobals ;
 void* botlibsetup ;
 void* qfalse ;

int Export_BotLibShutdown(void)
{
 if (!BotLibSetup("BotLibShutdown")) return BLERR_LIBRARYNOTSETUP;




 BotShutdownChatAI();
 BotShutdownMoveAI();
 BotShutdownGoalAI();
 BotShutdownWeaponAI();
 BotShutdownWeights();
 BotShutdownCharacters();

 AAS_Shutdown();

 EA_Shutdown();

 LibVarDeAllocAll();

 PC_RemoveAllGlobalDefines();







 Log_Shutdown();

 botlibsetup = qfalse;
 botlibglobals.botlibsetup = qfalse;

 PC_CheckOpenSourceHandles();

 return BLERR_NOERROR;
}
