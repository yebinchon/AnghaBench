
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {int buffer; int commandId; } ;
typedef TYPE_2__ drawBufferCommand_t ;
struct TYPE_22__ {void* finishCalled; } ;
struct TYPE_21__ {int string; } ;
struct TYPE_20__ {void* modified; } ;
struct TYPE_19__ {int integer; } ;
struct TYPE_18__ {void* modified; int string; } ;
struct TYPE_17__ {int (* Error ) (int ,char*,int) ;} ;
struct TYPE_14__ {int vertFlipBuffer; int stereoFrame; int height; int width; } ;
struct TYPE_16__ {TYPE_1__ refdef; int registered; } ;
struct TYPE_13__ {int vidHeight; int vidWidth; } ;


 int ERR_FATAL ;
 scalar_t__ GL_BACK ;
 scalar_t__ GL_FRONT ;
 int GL_NO_ERROR ;
 int GL_TextureMode (int ) ;
 int Q_stricmp (int ,char*) ;
 int RC_DRAW_BUFFER ;
 TYPE_2__* R_GetCommandBuffer (int) ;
 int R_IssuePendingRenderCommands () ;
 int R_SetColorMappings () ;
 int STEREO_CENTER ;
 int SwapVidAndBuff (TYPE_10__*) ;
 TYPE_10__ glConfig ;
 TYPE_9__ glState ;
 void* qfalse ;
 int qglGetError () ;
 int qtrue ;
 TYPE_8__* r_drawBuffer ;
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
  if (!Q_stricmp(r_drawBuffer->string, "GL_FRONT"))
   cmd->buffer = (int)GL_FRONT;
  else
   cmd->buffer = (int)GL_BACK;
 }

 tr.refdef.stereoFrame = STEREO_CENTER;

 tr.refdef.vertFlipBuffer = qtrue;
}
