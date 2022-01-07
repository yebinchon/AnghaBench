
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; int snap; } ;
typedef TYPE_1__ git_index_iterator ;


 int git__free (TYPE_1__*) ;
 int git_index_snapshot_release (int *,int ) ;

void git_index_iterator_free(git_index_iterator *it)
{
 if (it == ((void*)0))
  return;

 git_index_snapshot_release(&it->snap, it->index);
 git__free(it);
}
