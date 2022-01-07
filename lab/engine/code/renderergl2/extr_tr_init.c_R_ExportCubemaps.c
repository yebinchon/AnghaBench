
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int commandId; } ;
typedef TYPE_1__ exportCubemapsCommand_t ;


 int RC_EXPORT_CUBEMAPS ;
 TYPE_1__* R_GetCommandBuffer (int) ;

void R_ExportCubemaps(void)
{
 exportCubemapsCommand_t *cmd;

 cmd = R_GetCommandBuffer(sizeof(*cmd));
 if (!cmd) {
  return;
 }
 cmd->commandId = RC_EXPORT_CUBEMAPS;
}
