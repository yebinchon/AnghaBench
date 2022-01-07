
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pool ;


 size_t alloc_size (int *,size_t) ;
 int memset (void*,int,size_t const) ;
 void* pool_alloc (int *,size_t const) ;

void *git_pool_mallocz(git_pool *pool, size_t items)
{
 const size_t size = alloc_size(pool, items);
 void *ptr = pool_alloc(pool, size);
 if (ptr)
  memset(ptr, 0x0, size);
 return ptr;
}
