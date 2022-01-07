
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_repository_free (int *) ;
 int git_tree_free (int *) ;
 int * repo ;
 int * tree ;

void test_object_tree_frompath__cleanup(void)
{
 git_tree_free(tree);
 tree = ((void*)0);

 git_repository_free(repo);
 repo = ((void*)0);
}
