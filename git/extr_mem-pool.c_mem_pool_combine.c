
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_block {struct mp_block* next_block; } ;
struct mem_pool {struct mp_block* mp_block; scalar_t__ pool_alloc; } ;



void mem_pool_combine(struct mem_pool *dst, struct mem_pool *src)
{
 struct mp_block *p;


 if (dst->mp_block && src->mp_block) {




  p = dst->mp_block;
  while (p->next_block)
   p = p->next_block;

  p->next_block = src->mp_block;
 } else if (src->mp_block) {



  dst->mp_block = src->mp_block;
 } else {

 }

 dst->pool_alloc += src->pool_alloc;
 src->pool_alloc = 0;
 src->mp_block = ((void*)0);
}
