
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_conflict_iterator ;


 int git__free (int *) ;

void git_index_conflict_iterator_free(git_index_conflict_iterator *iterator)
{
 if (iterator == ((void*)0))
  return;

 git__free(iterator);
}
