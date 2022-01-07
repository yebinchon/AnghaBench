
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;
typedef int git_filemode_t ;


 int _repo ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_oid_cmp (int *,int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int * git_tree_entry_byindex (int *,int ) ;
 int git_tree_entry_filemode (int const*) ;
 int git_tree_entry_id (int const*) ;
 scalar_t__ git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

__attribute__((used)) static void tree_checker(
 git_oid *tid,
 const char *expected_sha,
 git_filemode_t expected_filemode)
{
 git_tree *tree;
 const git_tree_entry *entry;
 git_oid oid;

 cl_git_pass(git_tree_lookup(&tree, _repo, tid));
 cl_assert_equal_i(1, (int)git_tree_entrycount(tree));
 entry = git_tree_entry_byindex(tree, 0);

 cl_git_pass(git_oid_fromstr(&oid, expected_sha));

 cl_assert_equal_i(0, git_oid_cmp(&oid, git_tree_entry_id(entry)));
 cl_assert_equal_i(expected_filemode, git_tree_entry_filemode(entry));

 git_tree_free(tree);
}
