
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_object ;


 int git_object_free (int *) ;

void git_tree_free(git_tree *obj)
{
 git_object_free((git_object *)obj);
}
