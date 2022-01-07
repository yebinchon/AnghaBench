
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int qboolean ;
struct TYPE_7__ {scalar_t__ framebufferMultisample; } ;
struct TYPE_6__ {int (* Printf ) (int ,char*,int) ;} ;
struct TYPE_5__ {int colorFormat; scalar_t__* colorBuffers; int depthFormat; scalar_t__ depthBuffer; int stencilFormat; scalar_t__ stencilBuffer; int packedDepthStencilFormat; scalar_t__ packedDepthStencilBuffer; int frameBuffer; int height; int width; } ;
typedef scalar_t__ GLenum ;
typedef TYPE_1__ FBO_t ;


 int GL_COLOR_ATTACHMENT0 ;

 scalar_t__ GL_DEPTH_ATTACHMENT ;





 int GL_RENDERBUFFER ;
 scalar_t__ GL_STENCIL_ATTACHMENT ;





 int PRINT_WARNING ;
 TYPE_3__ glRefConfig ;
 int qglGenRenderbuffers (int,scalar_t__*) ;
 int qglNamedFramebufferRenderbufferEXT (int ,scalar_t__,int ,scalar_t__) ;
 int qglNamedRenderbufferStorageEXT (scalar_t__,int,int ,int ) ;
 int qglNamedRenderbufferStorageMultisampleEXT (scalar_t__,int,int,int ,int ) ;
 TYPE_2__ ri ;
 int stub1 (int ,char*,int) ;

void FBO_CreateBuffer(FBO_t *fbo, int format, int index, int multisample)
{
 uint32_t *pRenderBuffer;
 GLenum attachment;
 qboolean absent;

 switch(format)
 {
  case 140:
  case 136:
  case 137:
  case 133:
  case 139:
  case 135:
  case 138:
  case 134:
   fbo->colorFormat = format;
   pRenderBuffer = &fbo->colorBuffers[index];
   attachment = GL_COLOR_ATTACHMENT0 + index;
   break;

  case 145:
  case 144:
  case 143:
  case 142:
   fbo->depthFormat = format;
   pRenderBuffer = &fbo->depthBuffer;
   attachment = GL_DEPTH_ATTACHMENT;
   break;

  case 132:
  case 131:
  case 129:
  case 128:
  case 130:
   fbo->stencilFormat = format;
   pRenderBuffer = &fbo->stencilBuffer;
   attachment = GL_STENCIL_ATTACHMENT;
   break;

  case 141:
  case 146:
   fbo->packedDepthStencilFormat = format;
   pRenderBuffer = &fbo->packedDepthStencilBuffer;
   attachment = 0;
   break;

  default:
   ri.Printf(PRINT_WARNING, "FBO_CreateBuffer: invalid format %d\n", format);
   return;
 }

 absent = *pRenderBuffer == 0;
 if (absent)
  qglGenRenderbuffers(1, pRenderBuffer);

 if (multisample && glRefConfig.framebufferMultisample)
  qglNamedRenderbufferStorageMultisampleEXT(*pRenderBuffer, multisample, format, fbo->width, fbo->height);
 else
  qglNamedRenderbufferStorageEXT(*pRenderBuffer, format, fbo->width, fbo->height);

 if(absent)
 {
  if (attachment == 0)
  {
   qglNamedFramebufferRenderbufferEXT(fbo->frameBuffer, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, *pRenderBuffer);
   qglNamedFramebufferRenderbufferEXT(fbo->frameBuffer, GL_STENCIL_ATTACHMENT, GL_RENDERBUFFER, *pRenderBuffer);
  }
  else
  {
   qglNamedFramebufferRenderbufferEXT(fbo->frameBuffer, attachment, GL_RENDERBUFFER, *pRenderBuffer);
  }
 }
}
