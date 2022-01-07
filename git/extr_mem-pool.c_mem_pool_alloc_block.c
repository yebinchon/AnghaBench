
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_block {char* next_free; char* end; struct mp_block* next_block; scalar_t__ space; } ;
struct mem_pool {int pool_alloc; struct mp_block* mp_block; } ;


 int st_add (int,size_t) ;
 struct mp_block* xmalloc (int ) ;

__attribute__((used)) static struct mp_block *mem_pool_alloc_block(struct mem_pool *mem_pool, size_t block_alloc, struct mp_block *insert_after)
{
 struct mp_block *p;

 mem_pool->pool_alloc += sizeof(struct mp_block) + block_alloc;
 p = xmalloc(st_add(sizeof(struct mp_block), block_alloc));

 p->next_free = (char *)p->space;
 p->end = p->next_free + block_alloc;

 if (insert_after) {
  p->next_block = insert_after->next_block;
  insert_after->next_block = p;
 } else {
  p->next_block = mem_pool->mp_block;
  mem_pool->mp_block = p;
 }

 return p;
}
