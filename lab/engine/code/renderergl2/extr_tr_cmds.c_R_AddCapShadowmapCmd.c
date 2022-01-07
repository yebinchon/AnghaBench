
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; int cubeSide; int commandId; } ;
typedef TYPE_1__ capShadowmapCommand_t ;


 int RC_CAPSHADOWMAP ;
 TYPE_1__* R_GetCommandBuffer (int) ;

void R_AddCapShadowmapCmd( int map, int cubeSide ) {
 capShadowmapCommand_t *cmd;

 cmd = R_GetCommandBuffer( sizeof( *cmd ) );
 if ( !cmd ) {
  return;
 }
 cmd->commandId = RC_CAPSHADOWMAP;

 cmd->map = map;
 cmd->cubeSide = cubeSide;
}
