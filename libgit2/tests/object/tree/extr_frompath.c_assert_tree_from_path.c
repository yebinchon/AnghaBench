
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;


 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int git_tree_entry_bypath (int **,int *,char const*) ;
 int git_tree_entry_free (int *) ;
 int git_tree_entry_name (int *) ;

__attribute__((used)) static void assert_tree_from_path(
 git_tree *root,
 const char *path,
 const char *expected_entry_name)
{
 git_tree_entry *entry;

 cl_git_pass(git_tree_entry_bypath(&entry, root, path));
 cl_assert_equal_s(git_tree_entry_name(entry), expected_entry_name);
 git_tree_entry_free(entry);
}
