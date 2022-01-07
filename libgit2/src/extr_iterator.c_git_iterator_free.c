
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* end; struct TYPE_8__* start; int pathlist; TYPE_1__* cb; } ;
typedef TYPE_2__ git_iterator ;
struct TYPE_7__ {int (* free ) (TYPE_2__*) ;} ;


 int git__free (TYPE_2__*) ;
 int git_vector_free (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (TYPE_2__*) ;

void git_iterator_free(git_iterator *iter)
{
 if (iter == ((void*)0))
  return;

 iter->cb->free(iter);

 git_vector_free(&iter->pathlist);
 git__free(iter->start);
 git__free(iter->end);

 memset(iter, 0, sizeof(*iter));

 git__free(iter);
}
