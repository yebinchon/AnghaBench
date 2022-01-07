
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int git_vector_free_deep (int *) ;

void git_pathspec__vfree(git_vector *vspec)
{
 git_vector_free_deep(vspec);
}
