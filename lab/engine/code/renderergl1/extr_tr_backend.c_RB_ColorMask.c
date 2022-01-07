
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rgba; } ;
typedef TYPE_1__ colorMaskCommand_t ;


 int qglColorMask (int ,int ,int ,int ) ;

const void *RB_ColorMask(const void *data)
{
 const colorMaskCommand_t *cmd = data;

 qglColorMask(cmd->rgba[0], cmd->rgba[1], cmd->rgba[2], cmd->rgba[3]);

 return (const void *)(cmd + 1);
}
