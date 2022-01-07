
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct mp_block {size_t end; size_t next_free; } ;
struct mem_pool {int block_alloc; struct mp_block* mp_block; } ;


 void* mem_pool_alloc_block (struct mem_pool*,size_t,struct mp_block*) ;

void *mem_pool_alloc(struct mem_pool *mem_pool, size_t len)
{
 struct mp_block *p = ((void*)0);
 void *r;


 if (len & (sizeof(uintmax_t) - 1))
  len += sizeof(uintmax_t) - (len & (sizeof(uintmax_t) - 1));

 if (mem_pool->mp_block &&
     mem_pool->mp_block->end - mem_pool->mp_block->next_free >= len)
  p = mem_pool->mp_block;

 if (!p) {
  if (len >= (mem_pool->block_alloc / 2))
   return mem_pool_alloc_block(mem_pool, len, mem_pool->mp_block);

  p = mem_pool_alloc_block(mem_pool, mem_pool->block_alloc, ((void*)0));
 }

 r = p->next_free;
 p->next_free += len;
 return r;
}
