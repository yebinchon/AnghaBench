
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_reference ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_COMMIT ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int * g_actualobject ;
 int g_expectedobject ;
 int g_head_commit ;
 int g_repo ;
 int g_root_tree ;
 int git_commit_tree (int *,int ) ;
 int git_object_lookup (int *,int ,int ,int ) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_open (int *,int ) ;
 int git_tree_entry_bypath (int **,int ,char*) ;
 int git_tree_entry_free (int *) ;
 int git_tree_entry_id (int *) ;

void test_object_lookupbypath__initialize(void)
{
 git_reference *head;
 git_tree_entry *tree_entry;

 cl_git_pass(git_repository_open(&g_repo, cl_fixture("attr/.gitted")));

 cl_git_pass(git_repository_head(&head, g_repo));
 cl_git_pass(git_reference_peel((git_object**)&g_head_commit, head, GIT_OBJECT_COMMIT));
 cl_git_pass(git_commit_tree(&g_root_tree, g_head_commit));
 cl_git_pass(git_tree_entry_bypath(&tree_entry, g_root_tree, "subdir/subdir_test2.txt"));
 cl_git_pass(git_object_lookup(&g_expectedobject, g_repo, git_tree_entry_id(tree_entry),
    GIT_OBJECT_ANY));

 git_tree_entry_free(tree_entry);
 git_reference_free(head);

 g_actualobject = ((void*)0);
}
