
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec4_t ;
typedef int * vec2_t ;
struct shaderProgram_s {int dummy; } ;
struct image_s {int height; int width; } ;
typedef int mat4_t ;
typedef int* ivec4_t ;
struct TYPE_14__ {int vidWidth; int vidHeight; } ;
struct TYPE_13__ {TYPE_2__* currentFBO; } ;
struct TYPE_12__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_9__ {int toneMinAvgMaxLinear; int * autoExposureMinMax; } ;
struct TYPE_11__ {TYPE_1__ refdef; struct shaderProgram_s textureColorShader; } ;
struct TYPE_10__ {int width; int height; } ;
typedef TYPE_2__ FBO_t ;


 int CT_TWO_SIDED ;
 int FBO_Bind (TYPE_2__*) ;
 int GLSL_BindProgram (struct shaderProgram_s*) ;
 int GLSL_SetUniformMat4 (struct shaderProgram_s*,int ,int ) ;
 int GLSL_SetUniformVec2 (struct shaderProgram_s*,int ,int *) ;
 int GLSL_SetUniformVec3 (struct shaderProgram_s*,int ,int ) ;
 int GLSL_SetUniformVec4 (struct shaderProgram_s*,int ,int*) ;
 int GL_BindToTMU (struct image_s*,int ) ;
 int GL_Cull (int ) ;
 int GL_State (int) ;
 int Mat4Ortho (int ,int,int,int ,int ,int,int ) ;
 int PRINT_WARNING ;
 int RB_InstantQuad2 (int**,int **) ;
 int TB_COLORMAP ;
 int UNIFORM_AUTOEXPOSUREMINMAX ;
 int UNIFORM_COLOR ;
 int UNIFORM_INVTEXRES ;
 int UNIFORM_MODELVIEWPROJECTIONMATRIX ;
 int UNIFORM_TONEMINAVGMAXLINEAR ;
 int VectorCopy2 (int *,int *) ;
 int VectorCopy4 (int*,int*) ;
 int VectorSet2 (int *,float,float) ;
 int VectorSet4 (int*,int,int,float,float) ;
 int* colorWhite ;
 TYPE_6__ glConfig ;
 TYPE_5__ glState ;
 int qglScissor (int ,int ,int,int) ;
 int qglViewport (int ,int ,int,int) ;
 TYPE_4__ ri ;
 int stub1 (int ,char*) ;
 TYPE_3__ tr ;

void FBO_BlitFromTexture(struct image_s *src, vec4_t inSrcTexCorners, vec2_t inSrcTexScale, FBO_t *dst, ivec4_t inDstBox, struct shaderProgram_s *shaderProgram, vec4_t inColor, int blend)
{
 ivec4_t dstBox;
 vec4_t color;
 vec4_t quadVerts[4];
 vec2_t texCoords[4];
 vec2_t invTexRes;
 FBO_t *oldFbo = glState.currentFBO;
 mat4_t projection;
 int width, height;

 if (!src)
 {
  ri.Printf(PRINT_WARNING, "Tried to blit from a NULL texture!\n");
  return;
 }

 width = dst ? dst->width : glConfig.vidWidth;
 height = dst ? dst->height : glConfig.vidHeight;

 if (inSrcTexCorners)
 {
  VectorSet2(texCoords[0], inSrcTexCorners[0], inSrcTexCorners[1]);
  VectorSet2(texCoords[1], inSrcTexCorners[2], inSrcTexCorners[1]);
  VectorSet2(texCoords[2], inSrcTexCorners[2], inSrcTexCorners[3]);
  VectorSet2(texCoords[3], inSrcTexCorners[0], inSrcTexCorners[3]);
 }
 else
 {
  VectorSet2(texCoords[0], 0.0f, 1.0f);
  VectorSet2(texCoords[1], 1.0f, 1.0f);
  VectorSet2(texCoords[2], 1.0f, 0.0f);
  VectorSet2(texCoords[3], 0.0f, 0.0f);
 }


 if (inDstBox)
 {
  dstBox[0] = inDstBox[0];
  dstBox[1] = height - inDstBox[1] - inDstBox[3];
  dstBox[2] = inDstBox[0] + inDstBox[2];
  dstBox[3] = height - inDstBox[1];
 }
 else
 {
  VectorSet4(dstBox, 0, height, width, 0);
 }

 if (inSrcTexScale)
 {
  VectorCopy2(inSrcTexScale, invTexRes);
 }
 else
 {
  VectorSet2(invTexRes, 1.0f, 1.0f);
 }

 if (inColor)
 {
  VectorCopy4(inColor, color);
 }
 else
 {
  VectorCopy4(colorWhite, color);
 }

 if (!shaderProgram)
 {
  shaderProgram = &tr.textureColorShader;
 }

 FBO_Bind(dst);

 qglViewport( 0, 0, width, height );
 qglScissor( 0, 0, width, height );

 Mat4Ortho(0, width, height, 0, 0, 1, projection);

 GL_Cull( CT_TWO_SIDED );

 GL_BindToTMU(src, TB_COLORMAP);

 VectorSet4(quadVerts[0], dstBox[0], dstBox[1], 0.0f, 1.0f);
 VectorSet4(quadVerts[1], dstBox[2], dstBox[1], 0.0f, 1.0f);
 VectorSet4(quadVerts[2], dstBox[2], dstBox[3], 0.0f, 1.0f);
 VectorSet4(quadVerts[3], dstBox[0], dstBox[3], 0.0f, 1.0f);

 invTexRes[0] /= src->width;
 invTexRes[1] /= src->height;

 GL_State( blend );

 GLSL_BindProgram(shaderProgram);

 GLSL_SetUniformMat4(shaderProgram, UNIFORM_MODELVIEWPROJECTIONMATRIX, projection);
 GLSL_SetUniformVec4(shaderProgram, UNIFORM_COLOR, color);
 GLSL_SetUniformVec2(shaderProgram, UNIFORM_INVTEXRES, invTexRes);
 GLSL_SetUniformVec2(shaderProgram, UNIFORM_AUTOEXPOSUREMINMAX, tr.refdef.autoExposureMinMax);
 GLSL_SetUniformVec3(shaderProgram, UNIFORM_TONEMINAVGMAXLINEAR, tr.refdef.toneMinAvgMaxLinear);

 RB_InstantQuad2(quadVerts, texCoords);

 FBO_Bind(oldFbo);
}
