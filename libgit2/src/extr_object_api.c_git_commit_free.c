
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;
typedef int git_commit ;


 int git_object_free (int *) ;

void git_commit_free(git_commit *obj)
{
 git_object_free((git_object *)obj);
}
