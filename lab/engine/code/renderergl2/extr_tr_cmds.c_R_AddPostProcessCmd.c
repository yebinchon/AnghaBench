
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int viewParms; int refdef; int commandId; } ;
typedef TYPE_1__ postProcessCommand_t ;
struct TYPE_5__ {int viewParms; int refdef; } ;


 int RC_POSTPROCESS ;
 TYPE_1__* R_GetCommandBuffer (int) ;
 TYPE_2__ tr ;

void R_AddPostProcessCmd( void ) {
 postProcessCommand_t *cmd;

 cmd = R_GetCommandBuffer( sizeof( *cmd ) );
 if ( !cmd ) {
  return;
 }
 cmd->commandId = RC_POSTPROCESS;

 cmd->refdef = tr.refdef;
 cmd->viewParms = tr.viewParms;
}
