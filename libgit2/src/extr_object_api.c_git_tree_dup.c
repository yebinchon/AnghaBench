
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_object ;


 int git_object_dup (int **,int *) ;

int git_tree_dup(git_tree **out, git_tree *obj)
{
 return git_object_dup((git_object **)out, (git_object *)obj);
}
