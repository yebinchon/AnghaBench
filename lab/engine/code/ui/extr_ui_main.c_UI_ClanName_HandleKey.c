
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_3__ {int cinematic; int teamName; } ;


 int FEEDER_HEADS ;
 int UI_Cvar_VariableString (char*) ;
 int UI_FeederSelection (int ,int ) ;
 int UI_HeadCountByTeam () ;
 int UI_SelectForKey (int) ;
 int UI_TeamIndexFromName (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_CIN_StopCinematic (int) ;
 int trap_Cvar_Set (char*,int ) ;
 TYPE_2__ uiInfo ;
 int updateModel ;

__attribute__((used)) static qboolean UI_ClanName_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  int i;

  i = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_teamName"));

  if (uiInfo.teamList[i].cinematic >= 0) {
   trap_CIN_StopCinematic(uiInfo.teamList[i].cinematic);
   uiInfo.teamList[i].cinematic = -1;
  }

  i += select;

  if (i >= uiInfo.teamCount) {
   i = 0;
  } else if (i < 0) {
   i = uiInfo.teamCount - 1;
  }

  trap_Cvar_Set( "ui_teamName", uiInfo.teamList[i].teamName);
  UI_HeadCountByTeam();
  UI_FeederSelection(FEEDER_HEADS, 0);
  updateModel = qtrue;
  return qtrue;
 }
 return qfalse;
}
