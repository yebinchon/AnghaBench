
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ git_pool_page ;
struct TYPE_6__ {TYPE_1__* pages; } ;
typedef TYPE_2__ git_pool ;


 int git__free (TYPE_1__*) ;

void git_pool_clear(git_pool *pool)
{
 git_pool_page *scan, *next;

 for (scan = pool->pages; scan != ((void*)0); scan = next) {
  next = scan->next;
  git__free(scan);
 }

 pool->pages = ((void*)0);
}
