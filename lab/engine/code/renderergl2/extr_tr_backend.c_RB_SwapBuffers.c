
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int swapBuffersCommand_t ;
struct TYPE_24__ {int finishCalled; } ;
struct TYPE_23__ {int integer; } ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {unsigned char* (* Hunk_AllocateTempMemory ) (int) ;int (* Hunk_FreeTempMemory ) (unsigned char*) ;} ;
struct TYPE_18__ {scalar_t__ numIndexes; } ;
struct TYPE_17__ {int * renderFbo; int * msaaResolveFbo; } ;
struct TYPE_16__ {long c_overDraw; } ;
struct TYPE_15__ {void* projection2D; void* framePostProcessed; TYPE_1__ pc; } ;
struct TYPE_14__ {int vidWidth; int vidHeight; } ;
struct TYPE_13__ {scalar_t__ framebufferObject; } ;


 int FBO_FastBlit (int *,int *,int *,int *,int ,int ) ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_NEAREST ;
 int GL_STENCIL_INDEX ;
 int GL_UNSIGNED_BYTE ;
 int GLimp_EndFrame () ;
 int GLimp_LogComment (char*) ;
 int RB_EndSurface () ;
 int RB_ShowImages () ;
 TYPE_12__ backEnd ;
 TYPE_11__ glConfig ;
 TYPE_10__ glRefConfig ;
 TYPE_9__ glState ;
 void* qfalse ;
 int qglFinish () ;
 int qglReadPixels (int ,int ,int,int,int ,int ,unsigned char*) ;
 TYPE_8__* r_finish ;
 TYPE_7__* r_hdr ;
 TYPE_6__* r_measureOverdraw ;
 TYPE_5__* r_showImages ;
 TYPE_4__ ri ;
 unsigned char* stub1 (int) ;
 int stub2 (unsigned char*) ;
 TYPE_3__ tess ;
 TYPE_2__ tr ;

const void *RB_SwapBuffers( const void *data ) {
 const swapBuffersCommand_t *cmd;


 if ( tess.numIndexes ) {
  RB_EndSurface();
 }


 if ( r_showImages->integer ) {
  RB_ShowImages();
 }

 cmd = (const swapBuffersCommand_t *)data;



 if ( r_measureOverdraw->integer ) {
  int i;
  long sum = 0;
  unsigned char *stencilReadback;

  stencilReadback = ri.Hunk_AllocateTempMemory( glConfig.vidWidth * glConfig.vidHeight );
  qglReadPixels( 0, 0, glConfig.vidWidth, glConfig.vidHeight, GL_STENCIL_INDEX, GL_UNSIGNED_BYTE, stencilReadback );

  for ( i = 0; i < glConfig.vidWidth * glConfig.vidHeight; i++ ) {
   sum += stencilReadback[i];
  }

  backEnd.pc.c_overDraw += sum;
  ri.Hunk_FreeTempMemory( stencilReadback );
 }

 if (glRefConfig.framebufferObject)
 {
  if (!backEnd.framePostProcessed)
  {
   if (tr.msaaResolveFbo && r_hdr->integer)
   {

    FBO_FastBlit(tr.renderFbo, ((void*)0), tr.msaaResolveFbo, ((void*)0), GL_COLOR_BUFFER_BIT, GL_NEAREST);
    FBO_FastBlit(tr.msaaResolveFbo, ((void*)0), ((void*)0), ((void*)0), GL_COLOR_BUFFER_BIT, GL_NEAREST);
   }
   else if (tr.renderFbo)
   {
    FBO_FastBlit(tr.renderFbo, ((void*)0), ((void*)0), ((void*)0), GL_COLOR_BUFFER_BIT, GL_NEAREST);
   }
  }
 }

 if ( r_finish->integer == 1 && !glState.finishCalled ) {
  qglFinish();
 }

 GLimp_LogComment( "***************** RB_SwapBuffers *****************\n\n\n" );

 GLimp_EndFrame();

 backEnd.framePostProcessed = qfalse;
 backEnd.projection2D = qfalse;

 return (const void *)(cmd + 1);
}
