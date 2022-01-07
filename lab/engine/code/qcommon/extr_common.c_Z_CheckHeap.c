
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int tag; struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef TYPE_1__ memblock_t ;
typedef int byte ;
struct TYPE_4__ {TYPE_1__ blocklist; } ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 TYPE_2__* mainzone ;

__attribute__((used)) static void Z_CheckHeap( void ) {
 memblock_t *block;

 for (block = mainzone->blocklist.next ; ; block = block->next) {
  if (block->next == &mainzone->blocklist) {
   break;
  }
  if ( (byte *)block + block->size != (byte *)block->next)
   Com_Error( ERR_FATAL, "Z_CheckHeap: block size does not touch the next block" );
  if ( block->next->prev != block) {
   Com_Error( ERR_FATAL, "Z_CheckHeap: next block doesn't have proper back link" );
  }
  if ( !block->tag && !block->next->tag ) {
   Com_Error( ERR_FATAL, "Z_CheckHeap: two consecutive free blocks" );
  }
 }
}
