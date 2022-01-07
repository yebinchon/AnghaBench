
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_8__ {int h; int w; int y; int x; } ;
typedef TYPE_3__ rectDef_t ;
typedef scalar_t__ qhandle_t ;
typedef int gitem_t ;
struct TYPE_7__ {scalar_t__* flagShaders; scalar_t__ blueCubeIcon; } ;
struct TYPE_9__ {scalar_t__ gametype; int blueflag; TYPE_2__ media; } ;
struct TYPE_6__ {int member_2; int member_3; int member_1; int member_0; } ;


 int * BG_FindItemForPowerup (int ) ;
 int CG_DrawPic (int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 int PW_BLUEFLAG ;
 TYPE_4__ cgs ;
 int trap_R_SetColor (int *) ;

__attribute__((used)) static void CG_DrawBlueFlagStatus(rectDef_t *rect, qhandle_t shader) {
 if (cgs.gametype != GT_CTF && cgs.gametype != GT_1FCTF) {
  if (cgs.gametype == GT_HARVESTER) {
    vec4_t color = {0, 0, 1, 1};
    trap_R_SetColor(color);
     CG_DrawPic( rect->x, rect->y, rect->w, rect->h, cgs.media.blueCubeIcon );
    trap_R_SetColor(((void*)0));
  }
  return;
 }
  if (shader) {
  CG_DrawPic( rect->x, rect->y, rect->w, rect->h, shader );
  } else {
   gitem_t *item = BG_FindItemForPowerup( PW_BLUEFLAG );
    if (item) {
    vec4_t color = {0, 0, 1, 1};
    trap_R_SetColor(color);
     if( cgs.blueflag >= 0 && cgs.blueflag <= 2 ) {
      CG_DrawPic( rect->x, rect->y, rect->w, rect->h, cgs.media.flagShaders[cgs.blueflag] );
   } else {
      CG_DrawPic( rect->x, rect->y, rect->w, rect->h, cgs.media.flagShaders[0] );
   }
    trap_R_SetColor(((void*)0));
   }
  }
}
