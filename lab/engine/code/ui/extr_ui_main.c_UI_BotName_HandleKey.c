
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int botIndex; int characterCount; } ;


 int GT_TEAM ;
 int UI_GetNumBots () ;
 int UI_SelectForKey (int) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static qboolean UI_BotName_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  int game = trap_Cvar_VariableValue("g_gametype");
  int value = uiInfo.botIndex;

  value += select;

  if (game >= GT_TEAM) {
   if (value >= uiInfo.characterCount) {
    value = 0;
   } else if (value < 0) {
    value = uiInfo.characterCount - 1;
   }
  } else {
   if (value >= UI_GetNumBots()) {
    value = 0;
   } else if (value < 0) {
    value = UI_GetNumBots() - 1;
   }
  }
  uiInfo.botIndex = value;
  return qtrue;
 }
 return qfalse;
}
