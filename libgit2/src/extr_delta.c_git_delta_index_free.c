
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_delta_index ;


 int git__free (int *) ;

void git_delta_index_free(git_delta_index *index)
{
 git__free(index);
}
