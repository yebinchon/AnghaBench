
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec4_t ;
typedef float qboolean ;
typedef int ivec4_t ;
struct TYPE_6__ {float width; float height; } ;
typedef TYPE_1__ FBO_t ;


 int FBO_Blit (TYPE_1__*,int ,int *,TYPE_1__*,int ,int *,int ,int) ;
 int GLS_DSTBLEND_ONE ;
 int GLS_SRCBLEND_ONE ;
 int VectorSet4 (int ,float,float,float,float) ;

__attribute__((used)) static void RB_BlurAxis(FBO_t *srcFbo, FBO_t *dstFbo, float strength, qboolean horizontal)
{
 float dx, dy;
 float xmul, ymul;
 float weights[3] = {
  0.227027027f,
  0.316216216f,
  0.070270270f,
 };
 float offsets[3] = {
  0.f,
  1.3846153846f,
  3.2307692308f,
 };

 xmul = horizontal;
 ymul = 1.f - xmul;

 xmul *= strength;
 ymul *= strength;

 {
  ivec4_t srcBox, dstBox;
  vec4_t color;

  VectorSet4(color, weights[0], weights[0], weights[0], 1.0f);
  VectorSet4(srcBox, 0, 0, srcFbo->width, srcFbo->height);
  VectorSet4(dstBox, 0, 0, dstFbo->width, dstFbo->height);
  FBO_Blit(srcFbo, srcBox, ((void*)0), dstFbo, dstBox, ((void*)0), color, 0);

  VectorSet4(color, weights[1], weights[1], weights[1], 1.0f);
  dx = offsets[1] * xmul;
  dy = offsets[1] * ymul;
  VectorSet4(srcBox, dx, dy, srcFbo->width, srcFbo->height);
  FBO_Blit(srcFbo, srcBox, ((void*)0), dstFbo, dstBox, ((void*)0), color, GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE);
  VectorSet4(srcBox, -dx, -dy, srcFbo->width, srcFbo->height);
  FBO_Blit(srcFbo, srcBox, ((void*)0), dstFbo, dstBox, ((void*)0), color, GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE);

  VectorSet4(color, weights[2], weights[2], weights[2], 1.0f);
  dx = offsets[2] * xmul;
  dy = offsets[2] * ymul;
  VectorSet4(srcBox, dx, dy, srcFbo->width, srcFbo->height);
  FBO_Blit(srcFbo, srcBox, ((void*)0), dstFbo, dstBox, ((void*)0), color, GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE);
  VectorSet4(srcBox, -dx, -dy, srcFbo->width, srcFbo->height);
  FBO_Blit(srcFbo, srcBox, ((void*)0), dstFbo, dstBox, ((void*)0), color, GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE);
 }
}
