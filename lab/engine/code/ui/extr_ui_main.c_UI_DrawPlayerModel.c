
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int team ;
struct TYPE_6__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
typedef int playerInfo_t ;
typedef int model ;
typedef int head ;
struct TYPE_5__ {int realTime; } ;
struct TYPE_7__ {TYPE_1__ uiDC; } ;


 int LEGS_IDLE ;
 int MAX_QPATH ;
 size_t PITCH ;
 int Q_strncpyz (char*,int ,int) ;
 size_t ROLL ;
 int TORSO_STAND ;
 int UI_Cvar_VariableString (char*) ;
 int UI_DrawPlayer (int ,int ,int ,int ,int *,int) ;
 int UI_PlayerInfo_SetInfo (int *,int ,int ,int*,int ,int ,void*) ;
 int UI_PlayerInfo_SetModel (int *,char*,char*,char*) ;
 int VectorClear (int*) ;
 int WP_MACHINEGUN ;
 size_t YAW ;
 int memset (int *,int ,int) ;
 void* q3Model ;
 void* qfalse ;
 void* qtrue ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 TYPE_3__ uiInfo ;
 void* updateModel ;
 int vec3_origin ;

__attribute__((used)) static void UI_DrawPlayerModel(rectDef_t *rect) {
  static playerInfo_t info;
  char model[MAX_QPATH];
  char team[256];
 char head[256];
 vec3_t viewangles;
 vec3_t moveangles;

   if (trap_Cvar_VariableValue("ui_Q3Model")) {
  Q_strncpyz(model, UI_Cvar_VariableString("model"), sizeof(model));
  Q_strncpyz(head, UI_Cvar_VariableString("headmodel"), sizeof(head));
  if (!q3Model) {
   q3Model = qtrue;
   updateModel = qtrue;
  }
  team[0] = '\0';
 } else {

  Q_strncpyz(team, UI_Cvar_VariableString("ui_teamName"), sizeof(team));
  Q_strncpyz(model, UI_Cvar_VariableString("team_model"), sizeof(model));
  Q_strncpyz(head, UI_Cvar_VariableString("team_headmodel"), sizeof(head));
  if (q3Model) {
   q3Model = qfalse;
   updateModel = qtrue;
  }
 }
  if (updateModel) {
   memset( &info, 0, sizeof(playerInfo_t) );
   viewangles[YAW] = 180 - 10;
   viewangles[PITCH] = 0;
   viewangles[ROLL] = 0;
   VectorClear( moveangles );
    UI_PlayerInfo_SetModel( &info, model, head, team);
    UI_PlayerInfo_SetInfo( &info, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_MACHINEGUN, qfalse );

    updateModel = qfalse;
  }

  UI_DrawPlayer( rect->x, rect->y, rect->w, rect->h, &info, uiInfo.uiDC.realTime / 2);

}
