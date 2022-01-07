
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int assert (int *) ;
 int index_conflict_remove (int *,int *) ;

int git_index_conflict_cleanup(git_index *index)
{
 assert(index);
 return index_conflict_remove(index, ((void*)0));
}
