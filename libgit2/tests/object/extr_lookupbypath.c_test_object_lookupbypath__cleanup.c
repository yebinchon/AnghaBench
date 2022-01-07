
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_actualobject ;
 int * g_expectedobject ;
 int g_head_commit ;
 int * g_repo ;
 int g_root_tree ;
 int git_commit_free (int ) ;
 int git_object_free (int *) ;
 int git_repository_free (int *) ;
 int git_tree_free (int ) ;

void test_object_lookupbypath__cleanup(void)
{
 git_object_free(g_actualobject);
 git_object_free(g_expectedobject);
 git_tree_free(g_root_tree);
 git_commit_free(g_head_commit);
 g_expectedobject = ((void*)0);
 git_repository_free(g_repo);
 g_repo = ((void*)0);
}
