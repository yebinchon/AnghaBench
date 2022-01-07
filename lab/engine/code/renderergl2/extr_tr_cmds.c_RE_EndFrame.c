
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int commandId; } ;
typedef TYPE_2__ swapBuffersCommand_t ;
struct TYPE_6__ {int msec; } ;
struct TYPE_9__ {TYPE_1__ pc; } ;
struct TYPE_8__ {int frontEndMsec; int registered; } ;


 int RC_SWAP_BUFFERS ;
 TYPE_2__* R_GetCommandBufferReserved (int,int ) ;
 int R_InitNextFrame () ;
 int R_IssueRenderCommands (int ) ;
 TYPE_4__ backEnd ;
 int qtrue ;
 TYPE_3__ tr ;

void RE_EndFrame( int *frontEndMsec, int *backEndMsec ) {
 swapBuffersCommand_t *cmd;

 if ( !tr.registered ) {
  return;
 }
 cmd = R_GetCommandBufferReserved( sizeof( *cmd ), 0 );
 if ( !cmd ) {
  return;
 }
 cmd->commandId = RC_SWAP_BUFFERS;

 R_IssueRenderCommands( qtrue );

 R_InitNextFrame();

 if ( frontEndMsec ) {
  *frontEndMsec = tr.frontEndMsec;
 }
 tr.frontEndMsec = 0;
 if ( backEndMsec ) {
  *backEndMsec = backEnd.pc.msec;
 }
 backEnd.pc.msec = 0;
}
