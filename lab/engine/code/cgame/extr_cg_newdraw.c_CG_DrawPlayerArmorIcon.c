
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_10__ {int h; int w; scalar_t__ y; int x; } ;
typedef TYPE_2__ rectDef_t ;
typedef scalar_t__ qboolean ;
struct TYPE_15__ {int time; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_9__ {int armorModel; int armorIcon; } ;
struct TYPE_11__ {TYPE_1__ media; } ;


 int CG_Draw3DModel (int ,scalar_t__,int ,int,int ,int ,int*,int*) ;
 int CG_DrawPic (int ,scalar_t__,int ,int,int ) ;
 int VectorClear (int*) ;
 size_t YAW ;
 TYPE_7__ cg ;
 TYPE_6__ cg_draw3dIcons ;
 TYPE_5__ cg_drawIcons ;
 TYPE_4__ cg_drawStatus ;
 TYPE_3__ cgs ;

__attribute__((used)) static void CG_DrawPlayerArmorIcon( rectDef_t *rect, qboolean draw2D ) {
 vec3_t angles;
 vec3_t origin;

 if ( cg_drawStatus.integer == 0 ) {
  return;
 }

 if ( draw2D || ( !cg_draw3dIcons.integer && cg_drawIcons.integer) ) {
  CG_DrawPic( rect->x, rect->y + rect->h/2 + 1, rect->w, rect->h, cgs.media.armorIcon );
 } else if (cg_draw3dIcons.integer) {
  VectorClear( angles );
  origin[0] = 90;
  origin[1] = 0;
  origin[2] = -10;
  angles[YAW] = ( cg.time & 2047 ) * 360 / 2048.0f;
  CG_Draw3DModel( rect->x, rect->y, rect->w, rect->h, cgs.media.armorModel, 0, origin, angles );
 }
}
