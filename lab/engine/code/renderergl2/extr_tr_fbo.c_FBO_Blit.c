
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec4_t ;
typedef int vec2_t ;
struct shaderProgram_s {int dummy; } ;
typedef float* ivec4_t ;
struct TYPE_7__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_6__ {int * colorImage; scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_1__ FBO_t ;


 int FBO_BlitFromTexture (int ,float*,int ,TYPE_1__*,float*,struct shaderProgram_s*,float*,int) ;
 int GLS_DEPTHTEST_DISABLE ;
 int PRINT_WARNING ;
 int VectorSet4 (float*,float,float,float,float) ;
 TYPE_2__ ri ;
 int stub1 (int ,char*) ;

void FBO_Blit(FBO_t *src, ivec4_t inSrcBox, vec2_t srcTexScale, FBO_t *dst, ivec4_t dstBox, struct shaderProgram_s *shaderProgram, vec4_t color, int blend)
{
 vec4_t srcTexCorners;

 if (!src)
 {
  ri.Printf(PRINT_WARNING, "Tried to blit from a NULL FBO!\n");
  return;
 }

 if (inSrcBox)
 {
  srcTexCorners[0] = inSrcBox[0] / (float)src->width;
  srcTexCorners[1] = (inSrcBox[1] + inSrcBox[3]) / (float)src->height;
  srcTexCorners[2] = (inSrcBox[0] + inSrcBox[2]) / (float)src->width;
  srcTexCorners[3] = inSrcBox[1] / (float)src->height;
 }
 else
 {
  VectorSet4(srcTexCorners, 0.0f, 0.0f, 1.0f, 1.0f);
 }

 FBO_BlitFromTexture(src->colorImage[0], srcTexCorners, srcTexScale, dst, dstBox, shaderProgram, color, blend | GLS_DEPTHTEST_DISABLE);
}
