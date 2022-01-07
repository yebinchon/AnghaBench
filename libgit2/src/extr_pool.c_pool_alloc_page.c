
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; size_t avail; void* data; struct TYPE_5__* next; } ;
typedef TYPE_1__ git_pool_page ;
struct TYPE_6__ {size_t page_size; TYPE_1__* pages; } ;
typedef TYPE_2__ git_pool ;


 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t const,int) ;
 TYPE_1__* git__malloc (size_t) ;

__attribute__((used)) static void *pool_alloc_page(git_pool *pool, size_t size)
{
 git_pool_page *page;
 const size_t new_page_size = (size <= pool->page_size) ? pool->page_size : size;
 size_t alloc_size;

 if (GIT_ADD_SIZET_OVERFLOW(&alloc_size, new_page_size, sizeof(git_pool_page)) ||
  !(page = git__malloc(alloc_size)))
  return ((void*)0);

 page->size = new_page_size;
 page->avail = new_page_size - size;
 page->next = pool->pages;

 pool->pages = page;

 return page->data;
}
