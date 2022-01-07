
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {double time; double floatTime; scalar_t__ vertFlipBuffer; } ;
struct TYPE_6__ {scalar_t__ vertFlipBuffer; } ;
struct TYPE_10__ {TYPE_2__ refdef; TYPE_1__ viewParms; int projection2D; } ;
struct TYPE_9__ {int vidHeight; int vidWidth; } ;
struct TYPE_8__ {double (* Milliseconds ) () ;} ;


 int CT_TWO_SIDED ;
 int GLS_DEPTHTEST_DISABLE ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_CLIP_PLANE0 ;
 int GL_Cull (int ) ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int GL_State (int) ;
 TYPE_5__ backEnd ;
 TYPE_4__ glConfig ;
 int qglDisable (int ) ;
 int qglLoadIdentity () ;
 int qglMatrixMode (int ) ;
 int qglOrtho (int ,int ,int ,int ,int ,int) ;
 int qglScissor (int ,int ,int ,int ) ;
 int qglViewport (int ,int ,int ,int ) ;
 int qtrue ;
 TYPE_3__ ri ;
 double stub1 () ;

void RB_SetGL2D (void) {
 backEnd.projection2D = qtrue;
 backEnd.viewParms.vertFlipBuffer = backEnd.refdef.vertFlipBuffer;


 qglViewport( 0, 0, glConfig.vidWidth, glConfig.vidHeight );
 qglScissor( 0, 0, glConfig.vidWidth, glConfig.vidHeight );
 qglMatrixMode(GL_PROJECTION);
    qglLoadIdentity ();
 if(backEnd.viewParms.vertFlipBuffer)
 {
  qglOrtho (0, glConfig.vidWidth, 0, glConfig.vidHeight, 0, 1);
 }
 else
 {
  qglOrtho (0, glConfig.vidWidth, glConfig.vidHeight, 0, 0, 1);
 }
 qglMatrixMode(GL_MODELVIEW);
    qglLoadIdentity ();

 GL_State( GLS_DEPTHTEST_DISABLE |
     GLS_SRCBLEND_SRC_ALPHA |
     GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );

 GL_Cull( CT_TWO_SIDED );
 qglDisable( GL_CLIP_PLANE0 );


 backEnd.refdef.time = ri.Milliseconds();
 backEnd.refdef.floatTime = backEnd.refdef.time * 0.001;
}
