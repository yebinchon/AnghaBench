
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int swapBuffersCommand_t ;
typedef int stretchPicCommand_t ;
typedef int shader_t ;
typedef int setColorCommand_t ;
struct TYPE_5__ {void* cmds; } ;
typedef TYPE_1__ renderCommandList_t ;
struct TYPE_6__ {int numDrawSurfs; TYPE_3__* drawSurfs; } ;
typedef TYPE_2__ drawSurfsCommand_t ;
struct TYPE_7__ {int sort; } ;
typedef TYPE_3__ drawSurf_t ;
typedef int drawBufferCommand_t ;
struct TYPE_8__ {TYPE_1__ commands; } ;


 int MAX_SHADERS ;
 void* PADP (void const*,int) ;
 int QSORT_FOGNUM_SHIFT ;
 int QSORT_SHADERNUM_SHIFT ;






 int R_DecomposeSort (int,int*,int **,int*,int*) ;
 TYPE_4__* backEndData ;

__attribute__((used)) static void FixRenderCommandList( int newShader ) {
 renderCommandList_t *cmdList = &backEndData->commands;

 if( cmdList ) {
  const void *curCmd = cmdList->cmds;

  while ( 1 ) {
   curCmd = PADP(curCmd, sizeof(void *));

   switch ( *(const int *)curCmd ) {
   case 130:
    {
    const setColorCommand_t *sc_cmd = (const setColorCommand_t *)curCmd;
    curCmd = (const void *)(sc_cmd + 1);
    break;
    }
   case 129:
    {
    const stretchPicCommand_t *sp_cmd = (const stretchPicCommand_t *)curCmd;
    curCmd = (const void *)(sp_cmd + 1);
    break;
    }
   case 132:
    {
    int i;
    drawSurf_t *drawSurf;
    shader_t *shader;
    int fogNum;
    int entityNum;
    int dlightMap;
    int sortedIndex;
    const drawSurfsCommand_t *ds_cmd = (const drawSurfsCommand_t *)curCmd;

    for( i = 0, drawSurf = ds_cmd->drawSurfs; i < ds_cmd->numDrawSurfs; i++, drawSurf++ ) {
     R_DecomposeSort( drawSurf->sort, &entityNum, &shader, &fogNum, &dlightMap );
                    sortedIndex = (( drawSurf->sort >> QSORT_SHADERNUM_SHIFT ) & (MAX_SHADERS-1));
     if( sortedIndex >= newShader ) {
      sortedIndex++;
      drawSurf->sort = (sortedIndex << QSORT_SHADERNUM_SHIFT) | entityNum | ( fogNum << QSORT_FOGNUM_SHIFT ) | (int)dlightMap;
     }
    }
    curCmd = (const void *)(ds_cmd + 1);
    break;
    }
   case 133:
    {
    const drawBufferCommand_t *db_cmd = (const drawBufferCommand_t *)curCmd;
    curCmd = (const void *)(db_cmd + 1);
    break;
    }
   case 128:
    {
    const swapBuffersCommand_t *sb_cmd = (const swapBuffersCommand_t *)curCmd;
    curCmd = (const void *)(sb_cmd + 1);
    break;
    }
   case 131:
   default:
    return;
   }
  }
 }
}
