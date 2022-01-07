
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int buffer; int commandId; } ;
typedef TYPE_2__ drawBufferCommand_t ;
struct TYPE_20__ {int vidHeight; int vidWidth; } ;
struct TYPE_19__ {void* finishCalled; } ;
struct TYPE_18__ {void* modified; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {void* modified; int string; } ;
struct TYPE_15__ {int (* Error ) (int ,char*,int) ;} ;
struct TYPE_12__ {int vertFlipBuffer; int stereoFrame; int height; int width; } ;
struct TYPE_14__ {TYPE_1__ refdef; int registered; } ;


 int ERR_FATAL ;
 int GL_BACK ;
 int GL_NO_ERROR ;
 int GL_TextureMode (int ) ;
 int RC_DRAW_BUFFER ;
 TYPE_2__* R_GetCommandBuffer (int) ;
 int R_IssuePendingRenderCommands () ;
 int R_SetColorMappings () ;
 int STEREO_CENTER ;
 int SwapVidAndBuff (TYPE_9__*) ;
 TYPE_9__ glConfig ;
 TYPE_8__ glState ;
 void* qfalse ;
 int qglGetError () ;
 int qtrue ;
 TYPE_7__* r_gamma ;
 TYPE_6__* r_ignoreGLErrors ;
 TYPE_5__* r_textureMode ;
 TYPE_4__ ri ;
 int stub1 (int ,char*,int) ;
 TYPE_3__ tr ;

void RE_BeginFrameCustomView( void ) {
 drawBufferCommand_t *cmd = ((void*)0);
 if ( !tr.registered ) {
  return;
 }
 SwapVidAndBuff( &glConfig );
 tr.refdef.width = glConfig.vidWidth;
 tr.refdef.height = glConfig.vidHeight;
 glState.finishCalled = qfalse;




 if ( r_textureMode->modified ) {
  R_IssuePendingRenderCommands();
  GL_TextureMode( r_textureMode->string );
  r_textureMode->modified = qfalse;
 }




 if ( r_gamma->modified ) {
  r_gamma->modified = qfalse;

  R_IssuePendingRenderCommands();
  R_SetColorMappings();
 }


 if ( !r_ignoreGLErrors->integer )
 {
  int err;

  R_IssuePendingRenderCommands();
  if ((err = qglGetError()) != GL_NO_ERROR)
   ri.Error(ERR_FATAL, "RE_BeginFrame() - glGetError() failed (0x%x)!", err);
 }

 if( !(cmd = R_GetCommandBuffer(sizeof(*cmd))) )
  return;
 if(cmd)
 {
  cmd->commandId = RC_DRAW_BUFFER;
  cmd->buffer = GL_BACK;
 }

 tr.refdef.stereoFrame = STEREO_CENTER;

 tr.refdef.vertFlipBuffer = qtrue;
}
