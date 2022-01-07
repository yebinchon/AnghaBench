
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int motionJpeg; int * encodeBuffer; int * captureBuffer; int commandId; } ;
typedef TYPE_1__ videoFrameCommand_t ;
typedef int qboolean ;
typedef int byte ;
struct TYPE_5__ {int registered; } ;


 int RC_VIDEOFRAME ;
 TYPE_1__* R_GetCommandBuffer (int) ;
 TYPE_2__ tr ;

void RE_TakeVideoFrame( int width, int height,
  byte *captureBuffer, byte *encodeBuffer, qboolean motionJpeg )
{
 videoFrameCommand_t *cmd;

 if( !tr.registered ) {
  return;
 }

 cmd = R_GetCommandBuffer( sizeof( *cmd ) );
 if( !cmd ) {
  return;
 }

 cmd->commandId = RC_VIDEOFRAME;

 cmd->width = width;
 cmd->height = height;
 cmd->captureBuffer = captureBuffer;
 cmd->encodeBuffer = encodeBuffer;
 cmd->motionJpeg = motionJpeg;
}
