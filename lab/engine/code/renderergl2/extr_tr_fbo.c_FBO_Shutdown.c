
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int maxColorAttachments; int framebufferObject; } ;
struct TYPE_7__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_6__ {int numFBOs; TYPE_1__** fbos; } ;
struct TYPE_5__ {scalar_t__ frameBuffer; scalar_t__ stencilBuffer; scalar_t__ depthBuffer; scalar_t__* colorBuffers; } ;
typedef TYPE_1__ FBO_t ;


 int FBO_Bind (int *) ;
 int PRINT_ALL ;
 TYPE_4__ glRefConfig ;
 int qglDeleteFramebuffers (int,scalar_t__*) ;
 int qglDeleteRenderbuffers (int,scalar_t__*) ;
 TYPE_3__ ri ;
 int stub1 (int ,char*) ;
 TYPE_2__ tr ;

void FBO_Shutdown(void)
{
 int i, j;
 FBO_t *fbo;

 ri.Printf(PRINT_ALL, "------- FBO_Shutdown -------\n");

 if(!glRefConfig.framebufferObject)
  return;

 FBO_Bind(((void*)0));

 for(i = 0; i < tr.numFBOs; i++)
 {
  fbo = tr.fbos[i];

  for(j = 0; j < glRefConfig.maxColorAttachments; j++)
  {
   if(fbo->colorBuffers[j])
    qglDeleteRenderbuffers(1, &fbo->colorBuffers[j]);
  }

  if(fbo->depthBuffer)
   qglDeleteRenderbuffers(1, &fbo->depthBuffer);

  if(fbo->stencilBuffer)
   qglDeleteRenderbuffers(1, &fbo->stencilBuffer);

  if(fbo->frameBuffer)
   qglDeleteFramebuffers(1, &fbo->frameBuffer);
 }
}
