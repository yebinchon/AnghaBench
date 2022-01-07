
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {int characterCount; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 scalar_t__ GT_TEAM ;
 int UI_GetNumBots () ;
 int UI_SelectForKey (int) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int trap_Cvar_SetValue (char*,int) ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_2__ uiInfo ;
 TYPE_1__ ui_actualNetGameType ;
 char* va (char*,int) ;

__attribute__((used)) static qboolean UI_TeamMember_HandleKey(int flags, float *special, int key, qboolean blue, int num) {
 int select = UI_SelectForKey(key);
 if (select != 0) {



  char *cvar = va(blue ? "ui_blueteam%i" : "ui_redteam%i", num);
  int value = trap_Cvar_VariableValue(cvar);

  value += select;

  if (ui_actualNetGameType.integer >= GT_TEAM) {
   if (value >= uiInfo.characterCount + 2) {
    value = 0;
   } else if (value < 0) {
    value = uiInfo.characterCount + 2 - 1;
   }
  } else {
   if (value >= UI_GetNumBots() + 2) {
    value = 0;
   } else if (value < 0) {
    value = UI_GetNumBots() + 2 - 1;
   }
  }

  trap_Cvar_SetValue(cvar, value);
  return qtrue;
 }
 return qfalse;
}
