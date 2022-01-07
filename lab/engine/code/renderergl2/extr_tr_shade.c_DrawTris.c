
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec4_t ;
typedef int shaderProgram_t ;
struct TYPE_5__ {int firstIndex; int numIndexes; } ;
typedef TYPE_1__ shaderCommands_t ;
struct TYPE_7__ {int modelviewProjection; } ;
struct TYPE_6__ {int textureColorShader; int whiteImage; } ;


 int GLSL_BindProgram (int *) ;
 int GLSL_SetUniformInt (int *,int ,int ) ;
 int GLSL_SetUniformMat4 (int *,int ,int ) ;
 int GLSL_SetUniformVec4 (int *,int ,int ) ;
 int GLS_DEPTHMASK_TRUE ;
 int GLS_POLYMODE_LINE ;
 int GL_BindToTMU (int ,int ) ;
 int GL_State (int) ;
 int R_DrawElements (int ,int ) ;
 int TB_COLORMAP ;
 int UNIFORM_ALPHATEST ;
 int UNIFORM_COLOR ;
 int UNIFORM_MODELVIEWPROJECTIONMATRIX ;
 int VectorSet4 (int ,int,int,int,int) ;
 TYPE_3__ glState ;
 int qglDepthRange (int ,int) ;
 TYPE_2__ tr ;

__attribute__((used)) static void DrawTris (shaderCommands_t *input) {
 GL_BindToTMU( tr.whiteImage, TB_COLORMAP );

 GL_State( GLS_POLYMODE_LINE | GLS_DEPTHMASK_TRUE );
 qglDepthRange( 0, 0 );

 {
  shaderProgram_t *sp = &tr.textureColorShader;
  vec4_t color;

  GLSL_BindProgram(sp);

  GLSL_SetUniformMat4(sp, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);
  VectorSet4(color, 1, 1, 1, 1);
  GLSL_SetUniformVec4(sp, UNIFORM_COLOR, color);
  GLSL_SetUniformInt(sp, UNIFORM_ALPHATEST, 0);

  R_DrawElements(input->numIndexes, input->firstIndex);
 }

 qglDepthRange( 0, 1 );
}
