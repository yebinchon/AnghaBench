
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pool ;


 int alloc_size (int *,size_t) ;
 void* pool_alloc (int *,int ) ;

void *git_pool_malloc(git_pool *pool, size_t items)
{
 return pool_alloc(pool, alloc_size(pool, items));
}
