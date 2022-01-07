
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int framebufferObject; } ;
struct TYPE_10__ {TYPE_1__* currentFBO; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_7__ {char* name; int frameBuffer; } ;
typedef TYPE_1__ FBO_t ;


 int GL_BindFramebuffer (int ,int ) ;
 int GL_FRAMEBUFFER ;
 int GLimp_LogComment (int ) ;
 int PRINT_WARNING ;
 TYPE_5__ glRefConfig ;
 TYPE_4__ glState ;
 TYPE_3__* r_logFile ;
 TYPE_2__ ri ;
 int stub1 (int ,char*) ;
 int va (char*,char*) ;

void FBO_Bind(FBO_t * fbo)
{
 if (!glRefConfig.framebufferObject)
 {
  ri.Printf(PRINT_WARNING, "FBO_Bind() called without framebuffers enabled!\n");
  return;
 }

 if (glState.currentFBO == fbo)
  return;

 if (r_logFile->integer)
 {

  GLimp_LogComment(va("--- FBO_Bind( %s ) ---\n", fbo ? fbo->name : "NULL"));
 }

 GL_BindFramebuffer(GL_FRAMEBUFFER, fbo ? fbo->frameBuffer : 0);
 glState.currentFBO = fbo;
}
