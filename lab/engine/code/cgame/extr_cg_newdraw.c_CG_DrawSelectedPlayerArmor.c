
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_5__ {int w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ rectDef_t ;
typedef scalar_t__ qhandle_t ;
typedef int num ;
struct TYPE_6__ {scalar_t__ armor; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_7__ {TYPE_2__* clientinfo; } ;


 int CG_DrawPic (scalar_t__,scalar_t__,int,scalar_t__,scalar_t__) ;
 size_t CG_GetSelectedPlayer () ;
 int CG_Text_Paint (scalar_t__,scalar_t__,float,int *,char*,int ,int ,int) ;
 int CG_Text_Width (char*,float,int ) ;
 int Com_sprintf (char*,int,char*,scalar_t__) ;
 TYPE_3__ cgs ;
 int* sortedTeamPlayers ;
 int trap_R_SetColor (int *) ;

__attribute__((used)) static void CG_DrawSelectedPlayerArmor( rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle ) {
 clientInfo_t *ci;
 int value;
 char num[16];
  ci = cgs.clientinfo + sortedTeamPlayers[CG_GetSelectedPlayer()];
  if (ci) {
    if (ci->armor > 0) {
   if (shader) {
    trap_R_SetColor( color );
    CG_DrawPic(rect->x, rect->y, rect->w, rect->h, shader);
    trap_R_SetColor( ((void*)0) );
   } else {
    Com_sprintf (num, sizeof(num), "%i", ci->armor);
    value = CG_Text_Width(num, scale, 0);
    CG_Text_Paint(rect->x + (rect->w - value) / 2, rect->y + rect->h, scale, color, num, 0, 0, textStyle);
   }
  }
  }
}
