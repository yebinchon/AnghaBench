
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_block {scalar_t__ end; scalar_t__ space; struct mp_block* next_block; } ;
struct mem_pool {struct mp_block* mp_block; } ;



int mem_pool_contains(struct mem_pool *mem_pool, void *mem)
{
 struct mp_block *p;


 for (p = mem_pool->mp_block; p; p = p->next_block)
  if ((mem >= ((void *)p->space)) &&
      (mem < ((void *)p->end)))
   return 1;

 return 0;
}
