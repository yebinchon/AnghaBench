
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_6__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
typedef int playerInfo_t ;
typedef int model ;
typedef int headmodel ;
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
 int UI_PlayerInfo_SetInfo (int *,int ,int ,int*,int ,int ,scalar_t__) ;
 int UI_PlayerInfo_SetModel (int *,char*,char*,char*) ;
 int UI_RegisterClientModelname (int *,char*,char*,char*) ;
 int VectorClear (int*) ;
 int WP_MACHINEGUN ;
 size_t YAW ;
 int memset (int *,int ,int) ;
 scalar_t__ qfalse ;
 TYPE_3__ uiInfo ;
 scalar_t__ updateOpponentModel ;
 int vec3_origin ;

__attribute__((used)) static void UI_DrawOpponent(rectDef_t *rect) {
  static playerInfo_t info2;
  char model[MAX_QPATH];
  char headmodel[MAX_QPATH];
  char team[256];
 vec3_t viewangles;
 vec3_t moveangles;

 if (updateOpponentModel) {

  Q_strncpyz(model, UI_Cvar_VariableString("ui_opponentModel"), sizeof(model));
  Q_strncpyz(headmodel, UI_Cvar_VariableString("ui_opponentModel"), sizeof(headmodel));
  team[0] = '\0';

   memset( &info2, 0, sizeof(playerInfo_t) );
   viewangles[YAW] = 180 - 10;
   viewangles[PITCH] = 0;
   viewangles[ROLL] = 0;
   VectorClear( moveangles );
    UI_PlayerInfo_SetModel( &info2, model, headmodel, "");
    UI_PlayerInfo_SetInfo( &info2, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_MACHINEGUN, qfalse );
  UI_RegisterClientModelname( &info2, model, headmodel, team);
    updateOpponentModel = qfalse;
  }

  UI_DrawPlayer( rect->x, rect->y, rect->w, rect->h, &info2, uiInfo.uiDC.realTime / 2);

}
