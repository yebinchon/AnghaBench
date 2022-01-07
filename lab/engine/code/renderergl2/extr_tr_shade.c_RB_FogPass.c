
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec5_t ;
typedef unsigned char* vec4_t ;
typedef int shaderProgram_t ;
struct TYPE_12__ {int colorInt; } ;
typedef TYPE_4__ fog_t ;
struct TYPE_9__ {int c_fogDraws; } ;
struct TYPE_16__ {TYPE_1__ pc; } ;
struct TYPE_15__ {float vertexAttribsInterpolation; scalar_t__ boneAnimation; int boneMatrix; int modelviewProjection; scalar_t__ vertexAnimation; } ;
struct TYPE_14__ {int fogNum; float shaderTime; int firstIndex; int numIndexes; TYPE_3__* shader; } ;
struct TYPE_13__ {TYPE_2__* world; int * fogShader; } ;
struct TYPE_11__ {scalar_t__ fogPass; } ;
struct TYPE_10__ {TYPE_4__* fogs; } ;


 int ComputeDeformValues (int*,int ) ;
 int ComputeFogValues (unsigned char*,unsigned char*,float*) ;
 int DGEN_NONE ;
 int FOGDEF_USE_BONE_ANIMATION ;
 int FOGDEF_USE_DEFORM_VERTEXES ;
 int FOGDEF_USE_VERTEX_ANIMATION ;
 scalar_t__ FP_EQUAL ;
 int GLSL_BindProgram (int *) ;
 int GLSL_SetUniformFloat (int *,int ,float) ;
 int GLSL_SetUniformFloat5 (int *,int ,int ) ;
 int GLSL_SetUniformInt (int *,int ,int) ;
 int GLSL_SetUniformMat4 (int *,int ,int ) ;
 int GLSL_SetUniformMat4BoneMatrix (int *,int ,int ,scalar_t__) ;
 int GLSL_SetUniformVec4 (int *,int ,unsigned char*) ;
 int GLS_DEPTHFUNC_EQUAL ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_State (int) ;
 int R_DrawElements (int ,int ) ;
 int UNIFORM_ALPHATEST ;
 int UNIFORM_BONEMATRIX ;
 int UNIFORM_COLOR ;
 int UNIFORM_DEFORMGEN ;
 int UNIFORM_DEFORMPARAMS ;
 int UNIFORM_FOGDEPTH ;
 int UNIFORM_FOGDISTANCE ;
 int UNIFORM_FOGEYET ;
 int UNIFORM_MODELVIEWPROJECTIONMATRIX ;
 int UNIFORM_TIME ;
 int UNIFORM_VERTEXLERP ;
 TYPE_8__ backEnd ;
 TYPE_7__ glState ;
 TYPE_6__ tess ;
 TYPE_5__ tr ;

__attribute__((used)) static void RB_FogPass( void ) {
 fog_t *fog;
 vec4_t color;
 vec4_t fogDistanceVector, fogDepthVector = {0, 0, 0, 0};
 float eyeT = 0;
 shaderProgram_t *sp;

 int deformGen;
 vec5_t deformParams;

 ComputeDeformValues(&deformGen, deformParams);

 {
  int index = 0;

  if (deformGen != DGEN_NONE)
   index |= FOGDEF_USE_DEFORM_VERTEXES;

  if (glState.vertexAnimation)
   index |= FOGDEF_USE_VERTEX_ANIMATION;
  else if (glState.boneAnimation)
   index |= FOGDEF_USE_BONE_ANIMATION;

  sp = &tr.fogShader[index];
 }

 backEnd.pc.c_fogDraws++;

 GLSL_BindProgram(sp);

 fog = tr.world->fogs + tess.fogNum;

 GLSL_SetUniformMat4(sp, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);

 GLSL_SetUniformFloat(sp, UNIFORM_VERTEXLERP, glState.vertexAttribsInterpolation);

 if (glState.boneAnimation)
 {
  GLSL_SetUniformMat4BoneMatrix(sp, UNIFORM_BONEMATRIX, glState.boneMatrix, glState.boneAnimation);
 }

 GLSL_SetUniformInt(sp, UNIFORM_DEFORMGEN, deformGen);
 if (deformGen != DGEN_NONE)
 {
  GLSL_SetUniformFloat5(sp, UNIFORM_DEFORMPARAMS, deformParams);
  GLSL_SetUniformFloat(sp, UNIFORM_TIME, tess.shaderTime);
 }

 color[0] = ((unsigned char *)(&fog->colorInt))[0] / 255.0f;
 color[1] = ((unsigned char *)(&fog->colorInt))[1] / 255.0f;
 color[2] = ((unsigned char *)(&fog->colorInt))[2] / 255.0f;
 color[3] = ((unsigned char *)(&fog->colorInt))[3] / 255.0f;
 GLSL_SetUniformVec4(sp, UNIFORM_COLOR, color);

 ComputeFogValues(fogDistanceVector, fogDepthVector, &eyeT);

 GLSL_SetUniformVec4(sp, UNIFORM_FOGDISTANCE, fogDistanceVector);
 GLSL_SetUniformVec4(sp, UNIFORM_FOGDEPTH, fogDepthVector);
 GLSL_SetUniformFloat(sp, UNIFORM_FOGEYET, eyeT);

 if ( tess.shader->fogPass == FP_EQUAL ) {
  GL_State( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA | GLS_DEPTHFUNC_EQUAL );
 } else {
  GL_State( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );
 }
 GLSL_SetUniformInt(sp, UNIFORM_ALPHATEST, 0);

 R_DrawElements(tess.numIndexes, tess.firstIndex);
}
