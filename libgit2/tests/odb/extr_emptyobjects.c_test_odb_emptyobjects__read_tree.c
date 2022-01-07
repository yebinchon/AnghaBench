
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_TREE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_p (int *,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_type (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_entry_byname (int *,char*) ;
 int git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

void test_odb_emptyobjects__read_tree(void)
{
 git_oid id;
 git_tree *tree;

 cl_git_pass(git_oid_fromstr(&id, "4b825dc642cb6eb9a060e54bf8d69288fbee4904"));
 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));
 cl_assert_equal_i(GIT_OBJECT_TREE, git_object_type((git_object *) tree));
 cl_assert_equal_i(0, git_tree_entrycount(tree));
 cl_assert_equal_p(((void*)0), git_tree_entry_byname(tree, "foo"));
 git_tree_free(tree);
}
