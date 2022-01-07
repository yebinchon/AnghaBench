
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int currentServerCinematic; } ;
struct TYPE_10__ {int teamCount; TYPE_3__* teamList; TYPE_2__ serverStatus; TYPE_1__* mapList; } ;
struct TYPE_9__ {size_t integer; } ;
struct TYPE_8__ {int cinematic; } ;
struct TYPE_6__ {int cinematic; } ;


 int UI_CLANCINEMATIC ;
 int UI_Cvar_VariableString (char*) ;
 int UI_MAPCINEMATIC ;
 int UI_NETMAPCINEMATIC ;
 int UI_TeamIndexFromName (int ) ;
 int abs (int) ;
 int trap_CIN_StopCinematic (int) ;
 TYPE_5__ uiInfo ;
 TYPE_4__ ui_currentMap ;

__attribute__((used)) static void UI_StopCinematic(int handle) {
 if (handle >= 0) {
   trap_CIN_StopCinematic(handle);
 } else {
  handle = abs(handle);
  if (handle == UI_MAPCINEMATIC) {
   if (uiInfo.mapList[ui_currentMap.integer].cinematic >= 0) {
     trap_CIN_StopCinematic(uiInfo.mapList[ui_currentMap.integer].cinematic);
     uiInfo.mapList[ui_currentMap.integer].cinematic = -1;
   }
  } else if (handle == UI_NETMAPCINEMATIC) {
   if (uiInfo.serverStatus.currentServerCinematic >= 0) {
     trap_CIN_StopCinematic(uiInfo.serverStatus.currentServerCinematic);
    uiInfo.serverStatus.currentServerCinematic = -1;
   }
  } else if (handle == UI_CLANCINEMATIC) {
    int i = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_teamName"));
    if (i >= 0 && i < uiInfo.teamCount) {
    if (uiInfo.teamList[i].cinematic >= 0) {
      trap_CIN_StopCinematic(uiInfo.teamList[i].cinematic);
     uiInfo.teamList[i].cinematic = -1;
    }
   }
  }
 }
}
