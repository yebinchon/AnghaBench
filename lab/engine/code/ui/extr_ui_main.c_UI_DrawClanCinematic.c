
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_6__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_7__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_5__ {int cinematic; int teamIcon; int teamIcon_Metal; int imageName; } ;


 int CIN_loop ;
 int CIN_silent ;
 int UI_Cvar_VariableString (char*) ;
 int UI_DrawCinematic (int,int ,int ,int ,int ) ;
 int UI_DrawHandlePic (int ,int ,int ,int ,int ) ;
 int UI_TeamIndexFromName (int ) ;
 int trap_CIN_PlayCinematic (int ,int ,int ,int ,int ,int) ;
 int trap_CIN_RunCinematic (int) ;
 int trap_R_SetColor (int *) ;
 TYPE_3__ uiInfo ;
 int va (char*,int ) ;

__attribute__((used)) static void UI_DrawClanCinematic(rectDef_t *rect, float scale, vec4_t color) {
  int i;
  i = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_teamName"));
  if (i >= 0 && i < uiInfo.teamCount) {

  if (uiInfo.teamList[i].cinematic >= -2) {
   if (uiInfo.teamList[i].cinematic == -1) {
    uiInfo.teamList[i].cinematic = trap_CIN_PlayCinematic(va("%s.roq", uiInfo.teamList[i].imageName), 0, 0, 0, 0, (CIN_loop | CIN_silent) );
   }
   if (uiInfo.teamList[i].cinematic >= 0) {
     trap_CIN_RunCinematic(uiInfo.teamList[i].cinematic);
    UI_DrawCinematic(uiInfo.teamList[i].cinematic, rect->x, rect->y, rect->w, rect->h);
   } else {
      trap_R_SetColor( color );
    UI_DrawHandlePic( rect->x, rect->y, rect->w, rect->h, uiInfo.teamList[i].teamIcon_Metal);
    trap_R_SetColor(((void*)0));
    uiInfo.teamList[i].cinematic = -2;
   }
  } else {
    trap_R_SetColor( color );
   UI_DrawHandlePic( rect->x, rect->y, rect->w, rect->h, uiInfo.teamList[i].teamIcon);
   trap_R_SetColor(((void*)0));
  }
 }

}
