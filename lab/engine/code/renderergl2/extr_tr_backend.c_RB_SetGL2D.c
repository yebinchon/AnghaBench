
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mat4_t ;
struct TYPE_10__ {double time; double floatTime; int vertFlipBuffer; } ;
struct TYPE_8__ {int vertFlipBuffer; } ;
struct TYPE_14__ {TYPE_3__ refdef; TYPE_2__* last2DFBO; scalar_t__ projection2D; TYPE_1__ viewParms; } ;
struct TYPE_13__ {int vidWidth; int vidHeight; } ;
struct TYPE_12__ {TYPE_2__* currentFBO; } ;
struct TYPE_11__ {double (* Milliseconds ) () ;} ;
struct TYPE_9__ {int width; int height; } ;


 int CT_TWO_SIDED ;
 int GLS_DEPTHTEST_DISABLE ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_Cull (int ) ;
 int GL_SetModelviewMatrix (int ) ;
 int GL_SetProjectionMatrix (int ) ;
 int GL_State (int) ;
 int Mat4Identity (int ) ;
 int Mat4Ortho (int ,int,int,int ,int ,int,int ) ;
 TYPE_7__ backEnd ;
 TYPE_6__ glConfig ;
 TYPE_5__ glState ;
 int qglScissor (int ,int ,int,int) ;
 int qglViewport (int ,int ,int,int) ;
 scalar_t__ qtrue ;
 TYPE_4__ ri ;
 double stub1 () ;

void RB_SetGL2D (void) {
 mat4_t matrix;
 int width, height;

 if (backEnd.projection2D && backEnd.last2DFBO == glState.currentFBO)
  return;
 backEnd.viewParms.vertFlipBuffer = backEnd.refdef.vertFlipBuffer;

 backEnd.projection2D = qtrue;
 backEnd.last2DFBO = glState.currentFBO;

 if (glState.currentFBO)
 {
  width = glState.currentFBO->width;
  height = glState.currentFBO->height;
 }
 else
 {
  width = glConfig.vidWidth;
  height = glConfig.vidHeight;
 }


 qglViewport( 0, 0, width, height );
 qglScissor( 0, 0, width, height );

 Mat4Ortho(0, width, height, 0, 0, 1, matrix);
 GL_SetProjectionMatrix(matrix);
 Mat4Identity(matrix);
 GL_SetModelviewMatrix(matrix);

 GL_State( GLS_DEPTHTEST_DISABLE |
     GLS_SRCBLEND_SRC_ALPHA |
     GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );

 GL_Cull( CT_TWO_SIDED );


 backEnd.refdef.time = ri.Milliseconds();
 backEnd.refdef.floatTime = backEnd.refdef.time * 0.001;
}
