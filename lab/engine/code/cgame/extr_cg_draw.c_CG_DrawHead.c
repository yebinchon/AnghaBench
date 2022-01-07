
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double* vec3_t ;
typedef int clipHandle_t ;
struct TYPE_7__ {scalar_t__ deferred; int modelIcon; int headSkin; int headModel; int headOffset; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_6__ {int deferShader; } ;
struct TYPE_8__ {TYPE_1__ media; TYPE_2__* clientinfo; } ;


 int CG_Draw3DModel (float,float,float,float,int ,int ,double*,double*) ;
 int CG_DrawPic (float,float,float,float,int ) ;
 int VectorAdd (double*,int ,double*) ;
 TYPE_5__ cg_draw3dIcons ;
 TYPE_4__ cg_drawIcons ;
 TYPE_3__ cgs ;
 int trap_R_ModelBounds (int ,double*,double*) ;

void CG_DrawHead( float x, float y, float w, float h, int clientNum, vec3_t headAngles ) {
 clipHandle_t cm;
 clientInfo_t *ci;
 float len;
 vec3_t origin;
 vec3_t mins, maxs;

 ci = &cgs.clientinfo[ clientNum ];

 if ( cg_draw3dIcons.integer ) {
  cm = ci->headModel;
  if ( !cm ) {
   return;
  }


  trap_R_ModelBounds( cm, mins, maxs );

  origin[2] = -0.5 * ( mins[2] + maxs[2] );
  origin[1] = 0.5 * ( mins[1] + maxs[1] );



  len = 0.7 * ( maxs[2] - mins[2] );
  origin[0] = len / 0.268;


  VectorAdd( origin, ci->headOffset, origin );

  CG_Draw3DModel( x, y, w, h, ci->headModel, ci->headSkin, origin, headAngles );
 } else if ( cg_drawIcons.integer ) {
  CG_DrawPic( x, y, w, h, ci->modelIcon );
 }


 if ( ci->deferred ) {
  CG_DrawPic( x, y, w, h, cgs.media.deferShader );
 }
}
