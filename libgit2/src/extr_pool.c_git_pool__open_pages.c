
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ git_pool_page ;
struct TYPE_5__ {TYPE_1__* pages; } ;
typedef TYPE_2__ git_pool ;



uint32_t git_pool__open_pages(git_pool *pool)
{
 uint32_t ct = 0;
 git_pool_page *scan;
 for (scan = pool->pages; scan != ((void*)0); scan = scan->next) ct++;
 return ct;
}
