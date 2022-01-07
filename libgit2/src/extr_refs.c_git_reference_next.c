
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference_iterator ;
typedef int git_reference ;


 int git_refdb_iterator_next (int **,int *) ;

int git_reference_next(git_reference **out, git_reference_iterator *iter)
{
 return git_refdb_iterator_next(out, iter);
}
