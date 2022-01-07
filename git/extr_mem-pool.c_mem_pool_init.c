
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_pool {int block_alloc; } ;


 int BLOCK_GROWTH_SIZE ;
 int mem_pool_alloc_block (struct mem_pool*,size_t,int *) ;
 struct mem_pool* xcalloc (int,int) ;

void mem_pool_init(struct mem_pool **mem_pool, size_t initial_size)
{
 struct mem_pool *pool;

 if (*mem_pool)
  return;

 pool = xcalloc(1, sizeof(*pool));

 pool->block_alloc = BLOCK_GROWTH_SIZE;

 if (initial_size > 0)
  mem_pool_alloc_block(pool, initial_size, ((void*)0));

 *mem_pool = pool;
}
