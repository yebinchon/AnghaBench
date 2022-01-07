
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_52__ TYPE_3__ ;
typedef struct TYPE_51__ TYPE_2__ ;
typedef struct TYPE_50__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_50__ {float x; float y; float w; float h; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qhandle_t ;
struct TYPE_52__ {int integer; } ;
struct TYPE_51__ {scalar_t__ integer; } ;
 int CG_Draw1stPlace (TYPE_1__*,float,int ,int ,int) ;
 int CG_Draw2ndPlace (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawAreaChat (TYPE_1__*,float,int ,int ) ;
 int CG_DrawAreaPowerUp (TYPE_1__*,int,float,float,int ) ;
 int CG_DrawAreaSystemChat (TYPE_1__*,float,int ,int ) ;
 int CG_DrawAreaTeamChat (TYPE_1__*,float,int ,int ) ;
 int CG_DrawBlueFlagHead (TYPE_1__*) ;
 int CG_DrawBlueFlagName (TYPE_1__*,float,int ,int) ;
 int CG_DrawBlueFlagStatus (TYPE_1__*,int ) ;
 int CG_DrawBlueName (TYPE_1__*,float,int ,int) ;
 int CG_DrawBlueScore (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawCTFPowerUp (TYPE_1__*) ;
 int CG_DrawCapFragLimit (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawGameStatus (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawGameType (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawKiller (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawMedal (int,TYPE_1__*,float,int ,int ) ;
 int CG_DrawNewTeamInfo (TYPE_1__*,float,float,float,int ,int ) ;
 int CG_DrawPlayerAmmoIcon (TYPE_1__*,int) ;
 int CG_DrawPlayerAmmoValue (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawPlayerArmorIcon (TYPE_1__*,int) ;
 int CG_DrawPlayerArmorValue (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawPlayerHasFlag (TYPE_1__*,int) ;
 int CG_DrawPlayerHead (TYPE_1__*,int) ;
 int CG_DrawPlayerHealth (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawPlayerItem (TYPE_1__*,float,int) ;
 int CG_DrawPlayerLocation (TYPE_1__*,float,int ,int) ;
 int CG_DrawPlayerScore (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawPlayerStatus (TYPE_1__*) ;
 int CG_DrawRedFlagHead (TYPE_1__*) ;
 int CG_DrawRedFlagName (TYPE_1__*,float,int ,int) ;
 int CG_DrawRedFlagStatus (TYPE_1__*,int ) ;
 int CG_DrawRedName (TYPE_1__*,float,int ,int) ;
 int CG_DrawRedScore (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawSelectedPlayerArmor (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawSelectedPlayerHead (TYPE_1__*,int,int) ;
 int CG_DrawSelectedPlayerHealth (TYPE_1__*,float,int ,int ,int) ;
 int CG_DrawSelectedPlayerLocation (TYPE_1__*,float,int ,int) ;
 int CG_DrawSelectedPlayerName (TYPE_1__*,float,int ,int,int) ;
 int CG_DrawSelectedPlayerPowerup (TYPE_1__*,int) ;
 int CG_DrawSelectedPlayerStatus (TYPE_1__*) ;
 int CG_DrawSelectedPlayerWeapon (TYPE_1__*) ;
 int CG_DrawTeamColor (TYPE_1__*,int ) ;
 int CG_DrawTeamSpectators (TYPE_1__*,float,int ,int ) ;






 int CG_HarvesterSkulls (TYPE_1__*,float,int ,int,int) ;



 int CG_OneFlagStatus (TYPE_1__*) ;
 int CG_SHOW_2DONLY ;





 TYPE_3__ cg_currentSelectedPlayer ;
 TYPE_2__ cg_drawStatus ;
 int numSortedTeamPlayers ;
 int qfalse ;
 int qtrue ;

void CG_OwnerDraw(float x, float y, float w, float h, float text_x, float text_y, int ownerDraw, int ownerDrawFlags, int align, float special, float scale, vec4_t color, qhandle_t shader, int textStyle) {
 rectDef_t rect;

  if ( cg_drawStatus.integer == 0 ) {
  return;
 }





  rect.x = x;
  rect.y = y;
  rect.w = w;
  rect.h = h;

  switch (ownerDraw) {
  case 156:
    CG_DrawPlayerArmorIcon(&rect, ownerDrawFlags & CG_SHOW_2DONLY);
    break;
  case 155:
    CG_DrawPlayerArmorIcon(&rect, qtrue);
    break;
  case 154:
    CG_DrawPlayerArmorValue(&rect, scale, color, shader, textStyle);
    break;
  case 159:
    CG_DrawPlayerAmmoIcon(&rect, ownerDrawFlags & CG_SHOW_2DONLY);
    break;
  case 158:
    CG_DrawPlayerAmmoIcon(&rect, qtrue);
    break;
  case 157:
    CG_DrawPlayerAmmoValue(&rect, scale, color, shader, textStyle);
    break;
  case 139:
    CG_DrawSelectedPlayerHead(&rect, ownerDrawFlags & CG_SHOW_2DONLY, qfalse);
    break;
  case 129:
    CG_DrawSelectedPlayerHead(&rect, ownerDrawFlags & CG_SHOW_2DONLY, qtrue);
    break;
  case 128:
    CG_DrawSelectedPlayerName(&rect, scale, color, qtrue, textStyle);
    break;
  case 134:
    CG_DrawSelectedPlayerStatus(&rect);
    break;
  case 140:
    CG_DrawSelectedPlayerArmor(&rect, scale, color, shader, textStyle);
    break;
  case 138:
    CG_DrawSelectedPlayerHealth(&rect, scale, color, shader, textStyle);
    break;
  case 136:
    CG_DrawSelectedPlayerName(&rect, scale, color, qfalse, textStyle);
    break;
  case 137:
    CG_DrawSelectedPlayerLocation(&rect, scale, color, textStyle);
    break;
  case 133:
    CG_DrawSelectedPlayerWeapon(&rect);
    break;
  case 135:
    CG_DrawSelectedPlayerPowerup(&rect, ownerDrawFlags & CG_SHOW_2DONLY);
    break;
  case 151:
    CG_DrawPlayerHead(&rect, ownerDrawFlags & CG_SHOW_2DONLY);
    break;
  case 149:
    CG_DrawPlayerItem(&rect, scale, ownerDrawFlags & CG_SHOW_2DONLY);
    break;
  case 147:
    CG_DrawPlayerScore(&rect, scale, color, shader, textStyle);
    break;
  case 150:
    CG_DrawPlayerHealth(&rect, scale, color, shader, textStyle);
    break;
  case 141:
    CG_DrawRedScore(&rect, scale, color, shader, textStyle);
    break;
  case 174:
    CG_DrawBlueScore(&rect, scale, color, shader, textStyle);
    break;
  case 142:
    CG_DrawRedName(&rect, scale, color, textStyle);
    break;
  case 175:
    CG_DrawBlueName(&rect, scale, color, textStyle);
    break;
  case 178:
    CG_DrawBlueFlagHead(&rect);
    break;
  case 176:
    CG_DrawBlueFlagStatus(&rect, shader);
    break;
  case 177:
    CG_DrawBlueFlagName(&rect, scale, color, textStyle);
    break;
  case 145:
    CG_DrawRedFlagHead(&rect);
    break;
  case 143:
    CG_DrawRedFlagStatus(&rect, shader);
    break;
  case 144:
    CG_DrawRedFlagName(&rect, scale, color, textStyle);
    break;
  case 165:
    CG_HarvesterSkulls(&rect, scale, color, qfalse, textStyle);
    break;
  case 164:
    CG_HarvesterSkulls(&rect, scale, color, qtrue, textStyle);
    break;
  case 161:
    CG_OneFlagStatus(&rect);
    break;
  case 148:
    CG_DrawPlayerLocation(&rect, scale, color, textStyle);
    break;
  case 130:
    CG_DrawTeamColor(&rect, color);
    break;
  case 171:
    CG_DrawCTFPowerUp(&rect);
    break;
  case 182:
  CG_DrawAreaPowerUp(&rect, align, special, scale, color);
    break;
  case 146:
    CG_DrawPlayerStatus(&rect);
    break;
  case 153:
    CG_DrawPlayerHasFlag(&rect, qfalse);
    break;
  case 152:
    CG_DrawPlayerHasFlag(&rect, qtrue);
    break;
  case 181:
    CG_DrawAreaSystemChat(&rect, scale, color, shader);
    break;
  case 180:
    CG_DrawAreaTeamChat(&rect, scale, color, shader);
    break;
  case 183:
    CG_DrawAreaChat(&rect, scale, color, shader);
    break;
  case 167:
    CG_DrawGameType(&rect, scale, color, shader, textStyle);
    break;
  case 168:
    CG_DrawGameStatus(&rect, scale, color, shader, textStyle);
  break;
  case 162:
    CG_DrawKiller(&rect, scale, color, shader, textStyle);
  break;
 case 184:
 case 179:
 case 170:
 case 169:
 case 163:
 case 160:
 case 166:
 case 172:
  CG_DrawMedal(ownerDraw, &rect, scale, color, shader);
  break;
  case 132:
  CG_DrawTeamSpectators(&rect, scale, color, shader);
  break;
  case 131:
  if (cg_currentSelectedPlayer.integer == numSortedTeamPlayers) {
   CG_DrawNewTeamInfo(&rect, text_x, text_y, scale, color, shader);
  }
  break;
  case 173:
    CG_DrawCapFragLimit(&rect, scale, color, shader, textStyle);
  break;
  case 186:
    CG_Draw1stPlace(&rect, scale, color, shader, textStyle);
  break;
  case 185:
    CG_Draw2ndPlace(&rect, scale, color, shader, textStyle);
  break;
  default:
    break;
  }
}
