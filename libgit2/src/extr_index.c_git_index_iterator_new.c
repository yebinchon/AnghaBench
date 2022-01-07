
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * index; int snap; } ;
typedef TYPE_1__ git_index_iterator ;
typedef int git_index ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int git_index_snapshot_new (int *,int *) ;

int git_index_iterator_new(
 git_index_iterator **iterator_out,
 git_index *index)
{
 git_index_iterator *it;
 int error;

 assert(iterator_out && index);

 it = git__calloc(1, sizeof(git_index_iterator));
 GIT_ERROR_CHECK_ALLOC(it);

 if ((error = git_index_snapshot_new(&it->snap, index)) < 0) {
  git__free(it);
  return error;
 }

 it->index = index;

 *iterator_out = it;
 return 0;
}
