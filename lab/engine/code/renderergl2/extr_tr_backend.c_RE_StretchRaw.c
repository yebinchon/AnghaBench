
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


typedef int vec4_t ;
typedef int vec2_t ;
typedef int qboolean ;
typedef int byte ;
struct TYPE_14__ {scalar_t__ framePostProcessed; } ;
struct TYPE_13__ {scalar_t__ framebufferObject; } ;
struct TYPE_12__ {int modelviewProjection; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int (* Milliseconds ) () ;int (* Printf ) (int ,char*,int,int,int) ;int (* Error ) (int ,char*,int,int) ;} ;
struct TYPE_9__ {scalar_t__ numIndexes; } ;
struct TYPE_8__ {int textureColorShader; int * renderFbo; int * scratchImage; int registered; } ;


 int ERR_DROP ;
 int FBO_Bind (int *) ;
 int GLSL_BindProgram (int *) ;
 int GLSL_SetUniformMat4 (int *,int ,int ) ;
 int GLSL_SetUniformVec4 (int *,int ,int ) ;
 int GL_BindToTMU (int ,int ) ;
 int PRINT_ALL ;
 int RB_EndSurface () ;
 int RB_InstantQuad2 (int *,int *) ;
 int RB_SetGL2D () ;
 int RE_UploadCinematic (int,int,int,int,int const*,int,int ) ;
 int R_IssuePendingRenderCommands () ;
 int TB_COLORMAP ;
 int UNIFORM_COLOR ;
 int UNIFORM_MODELVIEWPROJECTIONMATRIX ;
 int VectorSet2 (int ,float,int) ;
 int VectorSet4 (int ,int,int,float,float) ;
 TYPE_7__ backEnd ;
 int colorWhite ;
 TYPE_6__ glRefConfig ;
 TYPE_5__ glState ;
 int qglFinish () ;
 TYPE_4__* r_speeds ;
 TYPE_3__ ri ;
 int stub1 () ;
 int stub2 (int ,char*,int,int) ;
 int stub3 () ;
 int stub4 (int ,char*,int,int,int) ;
 TYPE_2__ tess ;
 TYPE_1__ tr ;

void RE_StretchRaw (int x, int y, int w, int h, int cols, int rows, const byte *data, int client, qboolean dirty) {
 int i, j;
 int start, end;
 vec4_t quadVerts[4];
 vec2_t texCoords[4];

 if ( !tr.registered ) {
  return;
 }
 R_IssuePendingRenderCommands();

 if ( tess.numIndexes ) {
  RB_EndSurface();
 }


 qglFinish();

 start = 0;
 if ( r_speeds->integer ) {
  start = ri.Milliseconds();
 }


 for ( i = 0 ; ( 1 << i ) < cols ; i++ ) {
 }
 for ( j = 0 ; ( 1 << j ) < rows ; j++ ) {
 }
 if ( ( 1 << i ) != cols || ( 1 << j ) != rows) {
  ri.Error (ERR_DROP, "Draw_StretchRaw: size not a power of 2: %i by %i", cols, rows);
 }

 RE_UploadCinematic (w, h, cols, rows, data, client, dirty);
 GL_BindToTMU(tr.scratchImage[client], TB_COLORMAP);

 if ( r_speeds->integer ) {
  end = ri.Milliseconds();
  ri.Printf( PRINT_ALL, "qglTexSubImage2D %i, %i: %i msec\n", cols, rows, end - start );
 }


 if (glRefConfig.framebufferObject)
 {
  FBO_Bind(backEnd.framePostProcessed ? ((void*)0) : tr.renderFbo);
 }

 RB_SetGL2D();

 VectorSet4(quadVerts[0], x, y, 0.0f, 1.0f);
 VectorSet4(quadVerts[1], x + w, y, 0.0f, 1.0f);
 VectorSet4(quadVerts[2], x + w, y + h, 0.0f, 1.0f);
 VectorSet4(quadVerts[3], x, y + h, 0.0f, 1.0f);

 VectorSet2(texCoords[0], 0.5f / cols, 0.5f / rows);
 VectorSet2(texCoords[1], (cols - 0.5f) / cols, 0.5f / rows);
 VectorSet2(texCoords[2], (cols - 0.5f) / cols, (rows - 0.5f) / rows);
 VectorSet2(texCoords[3], 0.5f / cols, (rows - 0.5f) / rows);

 GLSL_BindProgram(&tr.textureColorShader);

 GLSL_SetUniformMat4(&tr.textureColorShader, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);
 GLSL_SetUniformVec4(&tr.textureColorShader, UNIFORM_COLOR, colorWhite);

 RB_InstantQuad2(quadVerts, texCoords);
}
