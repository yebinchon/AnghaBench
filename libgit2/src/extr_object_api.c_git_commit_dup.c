
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;
typedef int git_commit ;


 int git_object_dup (int **,int *) ;

int git_commit_dup(git_commit **out, git_commit *obj)
{
 return git_object_dup((git_object **)out, (git_object *)obj);
}
