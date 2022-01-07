
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* ivec4_t ;
struct TYPE_12__ {int vidWidth; int vidHeight; } ;
struct TYPE_11__ {int framebufferBlit; } ;
struct TYPE_10__ {int * currentFBO; } ;
struct TYPE_9__ {int width; int height; int frameBuffer; } ;
typedef int GLuint ;
typedef TYPE_1__ FBO_t ;


 int FBO_Blit (TYPE_1__*,int*,int *,TYPE_1__*,int*,int *,int *,int ) ;
 int GL_BindFramebuffer (int ,int ) ;
 int GL_DRAW_FRAMEBUFFER ;
 int GL_FRAMEBUFFER ;
 int GL_READ_FRAMEBUFFER ;
 int VectorSet4 (int*,int,int,int,int) ;
 TYPE_4__ glConfig ;
 TYPE_3__ glRefConfig ;
 TYPE_2__ glState ;
 int qglBlitFramebuffer (int,int,int,int,int,int,int,int,int,int) ;

void FBO_FastBlit(FBO_t *src, ivec4_t srcBox, FBO_t *dst, ivec4_t dstBox, int buffers, int filter)
{
 ivec4_t srcBoxFinal, dstBoxFinal;
 GLuint srcFb, dstFb;

 if (!glRefConfig.framebufferBlit)
 {
  FBO_Blit(src, srcBox, ((void*)0), dst, dstBox, ((void*)0), ((void*)0), 0);
  return;
 }

 srcFb = src ? src->frameBuffer : 0;
 dstFb = dst ? dst->frameBuffer : 0;

 if (!srcBox)
 {
  int width = src ? src->width : glConfig.vidWidth;
  int height = src ? src->height : glConfig.vidHeight;

  VectorSet4(srcBoxFinal, 0, 0, width, height);
 }
 else
 {
  VectorSet4(srcBoxFinal, srcBox[0], srcBox[1], srcBox[0] + srcBox[2], srcBox[1] + srcBox[3]);
 }

 if (!dstBox)
 {
  int width = dst ? dst->width : glConfig.vidWidth;
  int height = dst ? dst->height : glConfig.vidHeight;

  VectorSet4(dstBoxFinal, 0, 0, width, height);
 }
 else
 {
  VectorSet4(dstBoxFinal, dstBox[0], dstBox[1], dstBox[0] + dstBox[2], dstBox[1] + dstBox[3]);
 }

 GL_BindFramebuffer(GL_READ_FRAMEBUFFER, srcFb);
 GL_BindFramebuffer(GL_DRAW_FRAMEBUFFER, dstFb);
 qglBlitFramebuffer(srcBoxFinal[0], srcBoxFinal[1], srcBoxFinal[2], srcBoxFinal[3],
                       dstBoxFinal[0], dstBoxFinal[1], dstBoxFinal[2], dstBoxFinal[3],
        buffers, filter);

 GL_BindFramebuffer(GL_FRAMEBUFFER, 0);
 glState.currentFBO = ((void*)0);
}
