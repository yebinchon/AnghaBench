
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int myTeamCount; char** teamNames; int teamLeader; } ;


 int UI_BuildPlayerList () ;
 int UI_SelectForKey (int) ;
 int qfalse ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_SetValue (char*,int) ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static qboolean UI_SelectedPlayer_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  int selected;

  UI_BuildPlayerList();
  if (!uiInfo.teamLeader) {
   return qfalse;
  }
  selected = trap_Cvar_VariableValue("cg_selectedPlayer");

  selected += select;

  if (selected > uiInfo.myTeamCount) {
   selected = 0;
  } else if (selected < 0) {
   selected = uiInfo.myTeamCount;
  }

  if (selected == uiInfo.myTeamCount) {
   trap_Cvar_Set( "cg_selectedPlayerName", "Everyone");
  } else {
   trap_Cvar_Set( "cg_selectedPlayerName", uiInfo.teamNames[selected]);
  }
  trap_Cvar_SetValue( "cg_selectedPlayer", selected);
 }
 return qfalse;
}
