
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * index; } ;
typedef TYPE_1__ git_index_conflict_iterator ;
typedef int git_index ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* git__calloc (int,int) ;

int git_index_conflict_iterator_new(
 git_index_conflict_iterator **iterator_out,
 git_index *index)
{
 git_index_conflict_iterator *it = ((void*)0);

 assert(iterator_out && index);

 it = git__calloc(1, sizeof(git_index_conflict_iterator));
 GIT_ERROR_CHECK_ALLOC(it);

 it->index = index;

 *iterator_out = it;
 return 0;
}
