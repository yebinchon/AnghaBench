
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef float* vec4_t ;
typedef float* ivec4_t ;
struct TYPE_8__ {int vidWidth; int vidHeight; } ;
struct TYPE_7__ {int width; int height; } ;
typedef TYPE_1__ FBO_t ;


 int FBO_Blit (TYPE_1__*,float*,int *,TYPE_1__*,float*,int *,float*,int) ;
 int GLS_DSTBLEND_ONE ;
 int GLS_SRCBLEND_ONE ;
 int VectorSet4 (float*,float,float,float,float) ;
 TYPE_2__ glConfig ;
 float powf (float,float const) ;

__attribute__((used)) static void RB_RadialBlur(FBO_t *srcFbo, FBO_t *dstFbo, int passes, float stretch, float x, float y, float w, float h, float xcenter, float ycenter, float alpha)
{
 ivec4_t srcBox, dstBox;
 int srcWidth, srcHeight;
 vec4_t color;
 const float inc = 1.f / passes;
 const float mul = powf(stretch, inc);
 float scale;

 alpha *= inc;
 VectorSet4(color, alpha, alpha, alpha, 1.0f);

 srcWidth = srcFbo ? srcFbo->width : glConfig.vidWidth;
 srcHeight = srcFbo ? srcFbo->height : glConfig.vidHeight;

 VectorSet4(srcBox, 0, 0, srcWidth, srcHeight);

 VectorSet4(dstBox, x, y, w, h);
 FBO_Blit(srcFbo, srcBox, ((void*)0), dstFbo, dstBox, ((void*)0), color, 0);

 --passes;
 scale = mul;
 while (passes > 0)
 {
  float iscale = 1.f / scale;
  float s0 = xcenter * (1.f - iscale);
  float t0 = (1.0f - ycenter) * (1.f - iscale);

  srcBox[0] = s0 * srcWidth;
  srcBox[1] = t0 * srcHeight;
  srcBox[2] = iscale * srcWidth;
  srcBox[3] = iscale * srcHeight;

  FBO_Blit(srcFbo, srcBox, ((void*)0), dstFbo, dstBox, ((void*)0), color, GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE );

  scale *= mul;
  --passes;
 }
}
