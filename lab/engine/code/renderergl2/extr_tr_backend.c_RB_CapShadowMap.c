
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int map; int cubeSide; } ;
typedef TYPE_4__ capShadowmapCommand_t ;
struct TYPE_11__ {scalar_t__ y; int x; } ;
struct TYPE_16__ {TYPE_3__ refdef; } ;
struct TYPE_15__ {scalar_t__ vidHeight; } ;
struct TYPE_14__ {scalar_t__ numIndexes; } ;
struct TYPE_13__ {TYPE_2__** pshadowMaps; TYPE_1__** shadowCubemaps; } ;
struct TYPE_10__ {int texnum; } ;
struct TYPE_9__ {int texnum; } ;


 scalar_t__ GL_TEXTURE_2D ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_POSITIVE_X ;
 scalar_t__ PSHADOW_MAP_SIZE ;
 int RB_EndSurface () ;
 TYPE_8__ backEnd ;
 TYPE_7__ glConfig ;
 int qglCopyTextureSubImage2DEXT (int ,scalar_t__,int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_6__ tess ;
 TYPE_5__ tr ;

const void *RB_CapShadowMap(const void *data)
{
 const capShadowmapCommand_t *cmd = data;


 if(tess.numIndexes)
  RB_EndSurface();

 if (cmd->map != -1)
 {
  if (cmd->cubeSide != -1)
  {
   if (tr.shadowCubemaps[cmd->map])
   {
    qglCopyTextureSubImage2DEXT(tr.shadowCubemaps[cmd->map]->texnum, GL_TEXTURE_CUBE_MAP_POSITIVE_X + cmd->cubeSide, 0, 0, 0, backEnd.refdef.x, glConfig.vidHeight - ( backEnd.refdef.y + PSHADOW_MAP_SIZE ), PSHADOW_MAP_SIZE, PSHADOW_MAP_SIZE);
   }
  }
  else
  {
   if (tr.pshadowMaps[cmd->map])
   {
    qglCopyTextureSubImage2DEXT(tr.pshadowMaps[cmd->map]->texnum, GL_TEXTURE_2D, 0, 0, 0, backEnd.refdef.x, glConfig.vidHeight - (backEnd.refdef.y + PSHADOW_MAP_SIZE), PSHADOW_MAP_SIZE, PSHADOW_MAP_SIZE);
   }
  }
 }

 return (const void *)(cmd + 1);
}
