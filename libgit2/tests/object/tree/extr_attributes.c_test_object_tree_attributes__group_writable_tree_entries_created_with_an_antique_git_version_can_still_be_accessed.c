
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int * git_tree_entry_byname (int *,char*) ;
 int git_tree_entry_filemode (int const*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int repo ;
 int tree_oid ;

void test_object_tree_attributes__group_writable_tree_entries_created_with_an_antique_git_version_can_still_be_accessed(void)
{
 git_oid tid;
 git_tree *tree;
 const git_tree_entry *entry;


 cl_git_pass(git_oid_fromstr(&tid, tree_oid));
 cl_git_pass(git_tree_lookup(&tree, repo, &tid));

 entry = git_tree_entry_byname(tree, "old_mode.txt");
 cl_assert_equal_i(
  GIT_FILEMODE_BLOB,
  git_tree_entry_filemode(entry));

 git_tree_free(tree);
}
