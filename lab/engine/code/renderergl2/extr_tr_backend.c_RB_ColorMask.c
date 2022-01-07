
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * rgba; } ;
typedef TYPE_1__ colorMaskCommand_t ;
struct TYPE_8__ {int* colorMask; } ;
struct TYPE_7__ {scalar_t__ framebufferObject; } ;
struct TYPE_6__ {scalar_t__ numIndexes; } ;


 int RB_EndSurface () ;
 TYPE_4__ backEnd ;
 TYPE_3__ glRefConfig ;
 int qglColorMask (int ,int ,int ,int ) ;
 TYPE_2__ tess ;

const void *RB_ColorMask(const void *data)
{
 const colorMaskCommand_t *cmd = data;


 if(tess.numIndexes)
  RB_EndSurface();

 if (glRefConfig.framebufferObject)
 {

  backEnd.colorMask[0] = !cmd->rgba[0];
  backEnd.colorMask[1] = !cmd->rgba[1];
  backEnd.colorMask[2] = !cmd->rgba[2];
  backEnd.colorMask[3] = !cmd->rgba[3];
 }

 qglColorMask(cmd->rgba[0], cmd->rgba[1], cmd->rgba[2], cmd->rgba[3]);

 return (const void *)(cmd + 1);
}
