
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int soundHighScore; } ;


 int UIMENU_POSTGAME ;
 int _UI_SetActiveMenu (int ) ;
 int trap_Cvar_Set (char*,char*) ;
 TYPE_1__ uiInfo ;

void UI_ShowPostGame(qboolean newHigh) {
 trap_Cvar_Set ("cg_cameraOrbit", "0");
 trap_Cvar_Set("cg_thirdPerson", "0");
 uiInfo.soundHighScore = newHigh;
  _UI_SetActiveMenu(UIMENU_POSTGAME);
}
