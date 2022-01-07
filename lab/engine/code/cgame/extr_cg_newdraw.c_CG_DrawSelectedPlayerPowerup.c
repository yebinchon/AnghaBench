
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float x; float y; int h; int w; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qboolean ;
struct TYPE_8__ {int icon; } ;
typedef TYPE_2__ gitem_t ;
struct TYPE_9__ {int powerups; } ;
typedef TYPE_3__ clientInfo_t ;
struct TYPE_10__ {TYPE_3__* clientinfo; } ;


 TYPE_2__* BG_FindItemForPowerup (int) ;
 int CG_DrawPic (float,float,int ,int ,int ) ;
 size_t CG_GetSelectedPlayer () ;
 int PW_NUM_POWERUPS ;
 TYPE_4__ cgs ;
 int* sortedTeamPlayers ;
 int trap_R_RegisterShader (int ) ;

__attribute__((used)) static void CG_DrawSelectedPlayerPowerup( rectDef_t *rect, qboolean draw2D ) {
 clientInfo_t *ci;
  int j;
  float x, y;

  ci = cgs.clientinfo + sortedTeamPlayers[CG_GetSelectedPlayer()];
  if (ci) {
    x = rect->x;
    y = rect->y;

  for (j = 0; j < PW_NUM_POWERUPS; j++) {
   if (ci->powerups & (1 << j)) {
    gitem_t *item;
    item = BG_FindItemForPowerup( j );
    if (item) {
      CG_DrawPic( x, y, rect->w, rect->h, trap_R_RegisterShader( item->icon ) );
          return;
    }
   }
  }

  }
}
