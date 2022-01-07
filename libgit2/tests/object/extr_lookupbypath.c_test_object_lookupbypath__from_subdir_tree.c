
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_object ;


 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_oid (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_actualobject ;
 int g_expectedobject ;
 int g_repo ;
 int g_root_tree ;
 int git_object_id (int ) ;
 int git_object_lookup_bypath (int *,int *,char*,int ) ;
 int git_tree_entry_bypath (int **,int ,char*) ;
 int git_tree_entry_free (int *) ;
 int git_tree_entry_id (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int ) ;

void test_object_lookupbypath__from_subdir_tree(void)
{
 git_tree_entry *entry = ((void*)0);
 git_tree *tree = ((void*)0);

 cl_git_pass(git_tree_entry_bypath(&entry, g_root_tree, "subdir"));
 cl_git_pass(git_tree_lookup(&tree, g_repo, git_tree_entry_id(entry)));

 cl_git_pass(git_object_lookup_bypath(&g_actualobject, (git_object*)tree,
    "subdir_test2.txt", GIT_OBJECT_BLOB));
 cl_assert_equal_oid(git_object_id(g_expectedobject),
    git_object_id(g_actualobject));

 git_tree_entry_free(entry);
 git_tree_free(tree);
}
