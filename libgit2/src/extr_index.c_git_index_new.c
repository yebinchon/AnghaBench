
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int git_index_open (int **,int *) ;

int git_index_new(git_index **out)
{
 return git_index_open(out, ((void*)0));
}
