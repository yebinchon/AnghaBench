
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef float* vec4_t ;
typedef float* vec2_t ;
typedef int * ivec4_t ;
struct TYPE_12__ {scalar_t__ framebufferObject; } ;
struct TYPE_11__ {TYPE_1__** quarterFbo; int bokehShader; TYPE_1__** textureScratchFbo; } ;
struct TYPE_10__ {int height; int width; } ;
typedef TYPE_1__ FBO_t ;


 int FBO_Blit (TYPE_1__*,int *,float*,TYPE_1__*,int *,int *,float*,int) ;
 int FBO_FastBlit (TYPE_1__*,int *,TYPE_1__*,int *,int ,int ) ;
 int GLS_DSTBLEND_ONE ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_ONE ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_LINEAR ;
 int VectorSet4 (float*,float,float,float,int) ;
 TYPE_3__ glRefConfig ;
 TYPE_2__ tr ;

void RB_BokehBlur(FBO_t *src, ivec4_t srcBox, FBO_t *dst, ivec4_t dstBox, float blur)
{

 vec4_t color;

 blur *= 10.0f;

 if (blur < 0.004f)
  return;

 if (glRefConfig.framebufferObject)
 {

  if (blur > 0.0f)
  {
   ivec4_t quarterBox;

   quarterBox[0] = 0;
   quarterBox[1] = tr.quarterFbo[0]->height;
   quarterBox[2] = tr.quarterFbo[0]->width;
   quarterBox[3] = -tr.quarterFbo[0]->height;



   FBO_FastBlit(src, srcBox, tr.quarterFbo[0], quarterBox, GL_COLOR_BUFFER_BIT, GL_LINEAR);
  }


  if (blur > 1.0f)
  {


   FBO_FastBlit(tr.quarterFbo[0], ((void*)0), tr.textureScratchFbo[0], ((void*)0), GL_COLOR_BUFFER_BIT, GL_LINEAR);
  }


  if (blur > 0.0f && blur <= 1.0f)
  {

   VectorSet4(color, 1, 1, 1, blur);

   FBO_Blit(tr.quarterFbo[0], ((void*)0), ((void*)0), dst, dstBox, ((void*)0), color, GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA);
  }


  else if (blur > 1.0f && blur <= 2.0f)
  {

   FBO_Blit(tr.quarterFbo[0], ((void*)0), ((void*)0), dst, dstBox, ((void*)0), ((void*)0), 0);

   VectorSet4(color, 1, 1, 1, blur - 1.0f);

   FBO_Blit(tr.textureScratchFbo[0], ((void*)0), ((void*)0), dst, dstBox, ((void*)0), color, GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA);
  }
  else if (blur > 2.0f)
  {

   int i;

   for (i = 0; i < 2; i++)
   {
    vec2_t blurTexScale;
    float subblur;

    subblur = ((blur - 2.0f) / 2.0f) / 3.0f * (float)(i + 1);

    blurTexScale[0] =
    blurTexScale[1] = subblur;

    color[0] =
    color[1] =
    color[2] = 0.5f;
    color[3] = 1.0f;

    if (i != 0)
     FBO_Blit(tr.textureScratchFbo[0], ((void*)0), blurTexScale, tr.textureScratchFbo[1], ((void*)0), &tr.bokehShader, color, GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE);
    else
     FBO_Blit(tr.textureScratchFbo[0], ((void*)0), blurTexScale, tr.textureScratchFbo[1], ((void*)0), &tr.bokehShader, color, 0);
   }

   FBO_Blit(tr.textureScratchFbo[1], ((void*)0), ((void*)0), dst, dstBox, ((void*)0), ((void*)0), 0);
  }
 }
}
