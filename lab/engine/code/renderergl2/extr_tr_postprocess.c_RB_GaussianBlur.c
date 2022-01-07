
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef float* vec4_t ;
typedef float* ivec4_t ;
struct TYPE_13__ {int width; int height; } ;
struct TYPE_12__ {int vidWidth; int vidHeight; } ;
struct TYPE_11__ {TYPE_3__** textureScratchFbo; int whiteImage; TYPE_3__** quarterFbo; } ;


 float Com_Clamp (float,float,float) ;
 int FBO_Blit (TYPE_3__*,float*,int *,int *,float*,int *,float*,int) ;
 int FBO_BlitFromTexture (int ,int *,int *,TYPE_3__*,int *,int *,float*,int ) ;
 int FBO_FastBlit (TYPE_3__*,int *,TYPE_3__*,int *,int ,int ) ;
 int GLS_DEPTHTEST_DISABLE ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_LINEAR ;
 int GL_TRUE ;
 int RB_HBlur (TYPE_3__*,TYPE_3__*,float) ;
 int RB_VBlur (TYPE_3__*,TYPE_3__*,float) ;
 int VectorSet4 (float*,int,int,int,int) ;
 TYPE_2__ glConfig ;
 int qglColorMask (int ,int ,int ,int ) ;
 TYPE_1__ tr ;

void RB_GaussianBlur(float blur)
{

 float factor = Com_Clamp(0.f, 1.f, blur);

 if (factor <= 0.f)
  return;

 {
  ivec4_t srcBox, dstBox;
  vec4_t color;

  VectorSet4(color, 1, 1, 1, 1);


  FBO_FastBlit(((void*)0), ((void*)0), tr.quarterFbo[0], ((void*)0), GL_COLOR_BUFFER_BIT, GL_LINEAR);
  FBO_FastBlit(tr.quarterFbo[0], ((void*)0), tr.textureScratchFbo[0], ((void*)0), GL_COLOR_BUFFER_BIT, GL_LINEAR);


  qglColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_TRUE);
  FBO_BlitFromTexture(tr.whiteImage, ((void*)0), ((void*)0), tr.textureScratchFbo[0], ((void*)0), ((void*)0), color, GLS_DEPTHTEST_DISABLE);
  qglColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);


  RB_HBlur(tr.textureScratchFbo[0], tr.textureScratchFbo[1], factor);
  RB_VBlur(tr.textureScratchFbo[1], tr.textureScratchFbo[0], factor);


  VectorSet4(srcBox, 0, 0, tr.textureScratchFbo[0]->width, tr.textureScratchFbo[0]->height);
  VectorSet4(dstBox, 0, 0, glConfig.vidWidth, glConfig.vidHeight);
  color[3] = factor;
  FBO_Blit(tr.textureScratchFbo[0], srcBox, ((void*)0), ((void*)0), dstBox, ((void*)0), color, GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA);
 }
}
