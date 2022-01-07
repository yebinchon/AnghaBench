
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_pool {int dummy; } ;


 void* mem_pool_alloc (struct mem_pool*,size_t) ;
 int memset (void*,int ,size_t) ;
 size_t st_mult (size_t,size_t) ;

void *mem_pool_calloc(struct mem_pool *mem_pool, size_t count, size_t size)
{
 size_t len = st_mult(count, size);
 void *r = mem_pool_alloc(mem_pool, len);
 memset(r, 0, len);
 return r;
}
