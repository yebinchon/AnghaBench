
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t avail; size_t size; int * data; } ;
typedef TYPE_1__ git_pool_page ;
struct TYPE_6__ {TYPE_1__* pages; } ;
typedef TYPE_2__ git_pool ;


 void* pool_alloc_page (TYPE_2__*,size_t) ;

__attribute__((used)) static void *pool_alloc(git_pool *pool, size_t size)
{
 git_pool_page *page = pool->pages;
 void *ptr = ((void*)0);

 if (!page || page->avail < size)
  return pool_alloc_page(pool, size);

 ptr = &page->data[page->size - page->avail];
 page->avail -= size;

 return ptr;
}
