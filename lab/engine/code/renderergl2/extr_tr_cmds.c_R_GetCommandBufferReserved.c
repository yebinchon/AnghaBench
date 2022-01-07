
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used; void* cmds; } ;
typedef TYPE_1__ renderCommandList_t ;
struct TYPE_6__ {TYPE_1__ commands; } ;
struct TYPE_5__ {int (* Error ) (int ,char*,int) ;} ;


 int ERR_FATAL ;
 int MAX_RENDER_COMMANDS ;
 int PAD (int,int) ;
 TYPE_3__* backEndData ;
 TYPE_2__ ri ;
 int stub1 (int ,char*,int) ;

void *R_GetCommandBufferReserved( int bytes, int reservedBytes ) {
 renderCommandList_t *cmdList;

 cmdList = &backEndData->commands;
 bytes = PAD(bytes, sizeof(void *));


 if ( cmdList->used + bytes + sizeof( int ) + reservedBytes > MAX_RENDER_COMMANDS ) {
  if ( bytes > MAX_RENDER_COMMANDS - sizeof( int ) ) {
   ri.Error( ERR_FATAL, "R_GetCommandBuffer: bad size %i", bytes );
  }

  return ((void*)0);
 }

 cmdList->used += bytes;

 return cmdList->cmds + cmdList->used - bytes;
}
