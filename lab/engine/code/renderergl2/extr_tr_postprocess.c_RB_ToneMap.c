
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef float* vec4_t ;
typedef int * ivec4_t ;
struct TYPE_6__ {scalar_t__ textureFloat; } ;
struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {int frameCount; int tonemapShader; int fixedLevelsImage; int calcLevelsImage; int * calcLevelsFbo; int * targetLevelsFbo; int ** textureScratchFbo; int * calclevels4xShader; } ;
typedef int FBO_t ;


 int FBO_Blit (int *,int *,int *,int *,int *,int *,float*,int) ;
 int FBO_FastBlit (int *,int *,int *,int *,int ,int ) ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_BindToTMU (int ,int ) ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_LINEAR ;
 int TB_LEVELSMAP ;
 int VectorSet4 (int *,int ,int ,int,int) ;
 TYPE_3__ glRefConfig ;
 float pow (int,scalar_t__) ;
 TYPE_2__* r_cameraExposure ;
 TYPE_1__ tr ;

void RB_ToneMap(FBO_t *hdrFbo, ivec4_t hdrBox, FBO_t *ldrFbo, ivec4_t ldrBox, int autoExposure)
{
 ivec4_t srcBox, dstBox;
 vec4_t color;
 static int lastFrameCount = 0;

 if (autoExposure)
 {
  if (lastFrameCount == 0 || tr.frameCount < lastFrameCount || tr.frameCount - lastFrameCount > 5)
  {

   FBO_t *srcFbo, *dstFbo, *tmp;
   int size = 256;

   lastFrameCount = tr.frameCount;

   VectorSet4(dstBox, 0, 0, size, size);

   FBO_Blit(hdrFbo, hdrBox, ((void*)0), tr.textureScratchFbo[0], dstBox, &tr.calclevels4xShader[0], ((void*)0), 0);

   srcFbo = tr.textureScratchFbo[0];
   dstFbo = tr.textureScratchFbo[1];


   while (size > 1)
   {
    VectorSet4(srcBox, 0, 0, size, size);

    size >>= 1;
    VectorSet4(dstBox, 0, 0, size, size);

    if (size == 1)
     dstFbo = tr.targetLevelsFbo;


    FBO_FastBlit(srcFbo, srcBox, dstFbo, dstBox, GL_COLOR_BUFFER_BIT, GL_LINEAR);

    tmp = srcFbo;
    srcFbo = dstFbo;
    dstFbo = tmp;
   }
  }


  VectorSet4(srcBox, 0, 0, 0, 0);

  color[0] =
  color[1] =
  color[2] = 1.0f;
  if (glRefConfig.textureFloat)
   color[3] = 0.03f;
  else
   color[3] = 0.1f;

  FBO_Blit(tr.targetLevelsFbo, srcBox, ((void*)0), tr.calcLevelsFbo, ((void*)0), ((void*)0), color, GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA);
 }


 color[0] =
 color[1] =
 color[2] = pow(2, r_cameraExposure->value - autoExposure);
 color[3] = 1.0f;

 if (autoExposure)
  GL_BindToTMU(tr.calcLevelsImage, TB_LEVELSMAP);
 else
  GL_BindToTMU(tr.fixedLevelsImage, TB_LEVELSMAP);

 FBO_Blit(hdrFbo, hdrBox, ((void*)0), ldrFbo, ldrBox, &tr.tonemapShader, color, 0);
}
