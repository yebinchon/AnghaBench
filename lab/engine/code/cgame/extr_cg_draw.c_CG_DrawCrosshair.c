
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int * vec4_t ;
typedef int qhandle_t ;
struct TYPE_22__ {float value; } ;
struct TYPE_21__ {float integer; } ;
struct TYPE_20__ {float integer; } ;
struct TYPE_19__ {int integer; } ;
struct TYPE_16__ {int * crosshairShader; } ;
struct TYPE_18__ {TYPE_3__ media; } ;
struct TYPE_17__ {float x; float width; float y; float height; } ;
struct TYPE_14__ {scalar_t__* persistant; } ;
struct TYPE_15__ {TYPE_1__ ps; } ;
struct TYPE_13__ {float time; float itemPickupBlendTime; TYPE_4__ refdef; scalar_t__ renderingThirdPerson; TYPE_2__* snap; } ;
struct TYPE_12__ {scalar_t__ integer; } ;


 int CG_AdjustFrom640 (float*,float*,float*,float*) ;
 int CG_ColorForHealth (int *) ;
 float ITEM_BLOB_TIME ;
 int NUM_CROSSHAIRS ;
 size_t PERS_TEAM ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_11__ cg ;
 TYPE_10__ cg_crosshairHealth ;
 TYPE_9__ cg_crosshairSize ;
 TYPE_8__ cg_crosshairX ;
 TYPE_7__ cg_crosshairY ;
 TYPE_6__ cg_drawCrosshair ;
 TYPE_5__ cgs ;
 int trap_R_DrawStretchPic (float,float,float,float,int ,int ,int,int,int ) ;
 int trap_R_SetColor (int *) ;

__attribute__((used)) static void CG_DrawCrosshair(void)
{
 float w, h;
 qhandle_t hShader;
 float f;
 float x, y;
 int ca;

 if ( !cg_drawCrosshair.integer ) {
  return;
 }

 if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR) {
  return;
 }

 if ( cg.renderingThirdPerson ) {
  return;
 }


 if ( cg_crosshairHealth.integer ) {
  vec4_t hcolor;

  CG_ColorForHealth( hcolor );
  trap_R_SetColor( hcolor );
 } else {
  trap_R_SetColor( ((void*)0) );
 }

 w = h = cg_crosshairSize.value;


 f = cg.time - cg.itemPickupBlendTime;
 if ( f > 0 && f < ITEM_BLOB_TIME ) {
  f /= ITEM_BLOB_TIME;
  w *= ( 1 + f );
  h *= ( 1 + f );
 }

 x = cg_crosshairX.integer;
 y = cg_crosshairY.integer;
 CG_AdjustFrom640( &x, &y, &w, &h );

 ca = cg_drawCrosshair.integer;
 if (ca < 0) {
  ca = 0;
 }
 hShader = cgs.media.crosshairShader[ ca % NUM_CROSSHAIRS ];

 trap_R_DrawStretchPic( x + cg.refdef.x + 0.5 * (cg.refdef.width - w),
  y + cg.refdef.y + 0.5 * (cg.refdef.height - h),
  w, h, 0, 0, 1, 1, hShader );

 trap_R_SetColor( ((void*)0) );
}
