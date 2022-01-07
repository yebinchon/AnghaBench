
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


typedef int vec5_t ;
typedef float* vec4_t ;
typedef float* vec3_t ;
typedef int shaderProgram_t ;
struct TYPE_10__ {float radius; float* color; scalar_t__ additive; int transformed; } ;
typedef TYPE_3__ dlight_t ;
struct TYPE_9__ {int c_dlightVertexes; int c_dlightIndexes; int c_totalIndexes; int c_dlightDraws; } ;
struct TYPE_8__ {int num_dlights; TYPE_3__* dlights; } ;
struct TYPE_14__ {TYPE_2__ pc; TYPE_1__ refdef; } ;
struct TYPE_13__ {int vertexAttribsInterpolation; int modelviewProjection; } ;
struct TYPE_12__ {int dlightBits; scalar_t__ numVertexes; scalar_t__ numIndexes; int firstIndex; int shaderTime; } ;
struct TYPE_11__ {int dlightImage; int * dlightShader; } ;


 int ComputeDeformValues (int*,int ) ;
 int DGEN_NONE ;
 int GLSL_BindProgram (int *) ;
 int GLSL_SetUniformFloat (int *,int ,int ) ;
 int GLSL_SetUniformFloat5 (int *,int ,int ) ;
 int GLSL_SetUniformInt (int *,int ,int) ;
 int GLSL_SetUniformMat4 (int *,int ,int ) ;
 int GLSL_SetUniformVec4 (int *,int ,float*) ;
 int GLS_ATEST_GT_0 ;
 int GLS_DEPTHFUNC_EQUAL ;
 int GLS_DSTBLEND_ONE ;
 int GLS_SRCBLEND_DST_COLOR ;
 int GLS_SRCBLEND_ONE ;
 int GL_BindToTMU (int ,int ) ;
 int GL_State (int) ;
 int R_DrawElements (scalar_t__,int ) ;
 int TB_COLORMAP ;
 int UNIFORM_ALPHATEST ;
 int UNIFORM_COLOR ;
 int UNIFORM_DEFORMGEN ;
 int UNIFORM_DEFORMPARAMS ;
 int UNIFORM_DLIGHTINFO ;
 int UNIFORM_MODELVIEWPROJECTIONMATRIX ;
 int UNIFORM_TIME ;
 int UNIFORM_VERTEXLERP ;
 int VectorCopy (int ,float*) ;
 TYPE_7__ backEnd ;
 TYPE_6__ glState ;
 TYPE_5__ tess ;
 TYPE_4__ tr ;

__attribute__((used)) static void ProjectDlightTexture( void ) {
 int l;
 vec3_t origin;
 float scale;
 float radius;
 int deformGen;
 vec5_t deformParams;

 if ( !backEnd.refdef.num_dlights ) {
  return;
 }

 ComputeDeformValues(&deformGen, deformParams);

 for ( l = 0 ; l < backEnd.refdef.num_dlights ; l++ ) {
  dlight_t *dl;
  shaderProgram_t *sp;
  vec4_t vector;

  if ( !( tess.dlightBits & ( 1 << l ) ) ) {
   continue;
  }

  dl = &backEnd.refdef.dlights[l];
  VectorCopy( dl->transformed, origin );
  radius = dl->radius;
  scale = 1.0f / radius;

  sp = &tr.dlightShader[deformGen == DGEN_NONE ? 0 : 1];

  backEnd.pc.c_dlightDraws++;

  GLSL_BindProgram(sp);

  GLSL_SetUniformMat4(sp, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);

  GLSL_SetUniformFloat(sp, UNIFORM_VERTEXLERP, glState.vertexAttribsInterpolation);

  GLSL_SetUniformInt(sp, UNIFORM_DEFORMGEN, deformGen);
  if (deformGen != DGEN_NONE)
  {
   GLSL_SetUniformFloat5(sp, UNIFORM_DEFORMPARAMS, deformParams);
   GLSL_SetUniformFloat(sp, UNIFORM_TIME, tess.shaderTime);
  }

  vector[0] = dl->color[0];
  vector[1] = dl->color[1];
  vector[2] = dl->color[2];
  vector[3] = 1.0f;
  GLSL_SetUniformVec4(sp, UNIFORM_COLOR, vector);

  vector[0] = origin[0];
  vector[1] = origin[1];
  vector[2] = origin[2];
  vector[3] = scale;
  GLSL_SetUniformVec4(sp, UNIFORM_DLIGHTINFO, vector);

  GL_BindToTMU( tr.dlightImage, TB_COLORMAP );



  if ( dl->additive ) {
   GL_State( GLS_ATEST_GT_0 | GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE | GLS_DEPTHFUNC_EQUAL );
  }
  else {
   GL_State( GLS_ATEST_GT_0 | GLS_SRCBLEND_DST_COLOR | GLS_DSTBLEND_ONE | GLS_DEPTHFUNC_EQUAL );
  }

  GLSL_SetUniformInt(sp, UNIFORM_ALPHATEST, 1);

  R_DrawElements(tess.numIndexes, tess.firstIndex);

  backEnd.pc.c_totalIndexes += tess.numIndexes;
  backEnd.pc.c_dlightIndexes += tess.numIndexes;
  backEnd.pc.c_dlightVertexes += tess.numVertexes;
 }
}
