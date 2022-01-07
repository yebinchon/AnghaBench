
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_9__ {int h; int w; int y; int x; } ;
typedef TYPE_3__ rectDef_t ;
typedef int qboolean ;
struct TYPE_11__ {int time; TYPE_2__* snap; } ;
struct TYPE_10__ {int * models; int icon; } ;
struct TYPE_7__ {int* stats; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;


 int CG_Draw3DModel (int ,int ,int ,int ,int ,int ,int*,int*) ;
 int CG_DrawPic (int ,int ,int ,int ,int ) ;
 int CG_RegisterItemVisuals (int) ;
 size_t STAT_HOLDABLE_ITEM ;
 int VectorClear (int*) ;
 size_t YAW ;
 TYPE_5__ cg ;
 TYPE_4__* cg_items ;
 scalar_t__ qtrue ;

__attribute__((used)) static void CG_DrawPlayerItem( rectDef_t *rect, float scale, qboolean draw2D) {
 int value;
  vec3_t origin, angles;

 value = cg.snap->ps.stats[STAT_HOLDABLE_ITEM];
 if ( value ) {
  CG_RegisterItemVisuals( value );

  if (qtrue) {
    CG_RegisterItemVisuals( value );
    CG_DrawPic( rect->x, rect->y, rect->w, rect->h, cg_items[ value ].icon );
  } else {
    VectorClear( angles );
   origin[0] = 90;
    origin[1] = 0;
     origin[2] = -10;
    angles[YAW] = ( cg.time & 2047 ) * 360 / 2048.0;
   CG_Draw3DModel(rect->x, rect->y, rect->w, rect->h, cg_items[ value ].models[0], 0, origin, angles );
  }
 }

}
