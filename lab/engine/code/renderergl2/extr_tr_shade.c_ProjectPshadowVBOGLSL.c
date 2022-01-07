
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec5_t ;
typedef float* vec4_t ;
typedef float* vec3_t ;
typedef int shaderProgram_t ;
struct TYPE_11__ {int pshadowBits; scalar_t__ numIndexes; int firstIndex; } ;
typedef TYPE_3__ shaderCommands_t ;
struct TYPE_12__ {float* lightOrigin; float lightRadius; float viewRadius; int * lightViewAxis; } ;
typedef TYPE_4__ pshadow_t ;
struct TYPE_10__ {int c_totalIndexes; } ;
struct TYPE_9__ {int num_pshadows; TYPE_4__* pshadows; } ;
struct TYPE_15__ {TYPE_2__ pc; TYPE_1__ refdef; } ;
struct TYPE_14__ {int modelviewProjection; } ;
struct TYPE_13__ {int * pshadowMaps; int pshadowShader; } ;


 int ComputeDeformValues (int*,int ) ;
 int GLSL_BindProgram (int *) ;
 int GLSL_SetUniformFloat (int *,int ,float) ;
 int GLSL_SetUniformInt (int *,int ,int ) ;
 int GLSL_SetUniformMat4 (int *,int ,int ) ;
 int GLSL_SetUniformVec3 (int *,int ,float*) ;
 int GLSL_SetUniformVec4 (int *,int ,float*) ;
 int GLS_DEPTHFUNC_EQUAL ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_BindToTMU (int ,int ) ;
 int GL_State (int) ;
 int R_DrawElements (scalar_t__,int ) ;
 int TB_DIFFUSEMAP ;
 int UNIFORM_ALPHATEST ;
 int UNIFORM_LIGHTFORWARD ;
 int UNIFORM_LIGHTORIGIN ;
 int UNIFORM_LIGHTRADIUS ;
 int UNIFORM_LIGHTRIGHT ;
 int UNIFORM_LIGHTUP ;
 int UNIFORM_MODELVIEWPROJECTIONMATRIX ;
 int VectorCopy (float*,float*) ;
 int VectorScale (int ,float,float*) ;
 TYPE_8__ backEnd ;
 TYPE_7__ glState ;
 TYPE_3__ tess ;
 TYPE_5__ tr ;

__attribute__((used)) static void ProjectPshadowVBOGLSL( void ) {
 int l;
 vec3_t origin;
 float radius;

 int deformGen;
 vec5_t deformParams;

 shaderCommands_t *input = &tess;

 if ( !backEnd.refdef.num_pshadows ) {
  return;
 }

 ComputeDeformValues(&deformGen, deformParams);

 for ( l = 0 ; l < backEnd.refdef.num_pshadows ; l++ ) {
  pshadow_t *ps;
  shaderProgram_t *sp;
  vec4_t vector;

  if ( !( tess.pshadowBits & ( 1 << l ) ) ) {
   continue;
  }

  ps = &backEnd.refdef.pshadows[l];
  VectorCopy( ps->lightOrigin, origin );
  radius = ps->lightRadius;

  sp = &tr.pshadowShader;

  GLSL_BindProgram(sp);

  GLSL_SetUniformMat4(sp, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);

  VectorCopy(origin, vector);
  vector[3] = 1.0f;
  GLSL_SetUniformVec4(sp, UNIFORM_LIGHTORIGIN, vector);

  VectorScale(ps->lightViewAxis[0], 1.0f / ps->viewRadius, vector);
  GLSL_SetUniformVec3(sp, UNIFORM_LIGHTFORWARD, vector);

  VectorScale(ps->lightViewAxis[1], 1.0f / ps->viewRadius, vector);
  GLSL_SetUniformVec3(sp, UNIFORM_LIGHTRIGHT, vector);

  VectorScale(ps->lightViewAxis[2], 1.0f / ps->viewRadius, vector);
  GLSL_SetUniformVec3(sp, UNIFORM_LIGHTUP, vector);

  GLSL_SetUniformFloat(sp, UNIFORM_LIGHTRADIUS, radius);



  GL_State( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA | GLS_DEPTHFUNC_EQUAL );
  GLSL_SetUniformInt(sp, UNIFORM_ALPHATEST, 0);

  GL_BindToTMU( tr.pshadowMaps[l], TB_DIFFUSEMAP );





  R_DrawElements(input->numIndexes, input->firstIndex);

  backEnd.pc.c_totalIndexes += tess.numIndexes;

 }
}
