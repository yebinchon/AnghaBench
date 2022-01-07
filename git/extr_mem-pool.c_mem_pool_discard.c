
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_block {scalar_t__ space; scalar_t__ end; struct mp_block* next_block; struct mp_block* mp_block; } ;
struct mem_pool {scalar_t__ space; scalar_t__ end; struct mem_pool* next_block; struct mem_pool* mp_block; } ;


 int free (struct mp_block*) ;
 int memset (scalar_t__,int,int) ;

void mem_pool_discard(struct mem_pool *mem_pool, int invalidate_memory)
{
 struct mp_block *block, *block_to_free;

 block = mem_pool->mp_block;
 while (block)
 {
  block_to_free = block;
  block = block->next_block;

  if (invalidate_memory)
   memset(block_to_free->space, 0xDD, ((char *)block_to_free->end) - ((char *)block_to_free->space));

  free(block_to_free);
 }

 free(mem_pool);
}
