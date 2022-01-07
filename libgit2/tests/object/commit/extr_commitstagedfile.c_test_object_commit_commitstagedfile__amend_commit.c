
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_commit ;


 int GIT_ENOTFOUND ;
 int assert_commit_is_head (int *) ;
 int assert_commit_tree_has_n_entries (int *,int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int ,int *,int ,char*) ;
 int git_commit_amend (int *,int *,char*,int *,int *,int *,char*,int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_parentcount (int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_repository_index (int **,int ) ;
 int git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int repo ;

void test_object_commit_commitstagedfile__amend_commit(void)
{
 git_index *index;
 git_oid old_oid, new_oid, tree_oid;
 git_commit *old_commit, *new_commit;
 git_tree *tree;



 cl_git_mkfile("treebuilder/myfile", "This is a file\n");
 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_add_bypath(index, "myfile"));
 cl_repo_commit_from_index(&old_oid, repo, ((void*)0), 0, "first commit");

 cl_git_pass(git_commit_lookup(&old_commit, repo, &old_oid));

 cl_assert_equal_i(0, git_commit_parentcount(old_commit));
 assert_commit_tree_has_n_entries(old_commit, 1);
 assert_commit_is_head(old_commit);



 cl_git_pass(git_commit_amend(
  &new_oid, old_commit, "HEAD", ((void*)0), ((void*)0), ((void*)0), "Initial commit", ((void*)0)));


 cl_git_fail(git_commit_amend(
  &new_oid, old_commit, "HEAD", ((void*)0), ((void*)0), ((void*)0), "Initial commit", ((void*)0)));

 cl_git_pass(git_commit_lookup(&new_commit, repo, &new_oid));

 cl_assert_equal_i(0, git_commit_parentcount(new_commit));
 assert_commit_tree_has_n_entries(new_commit, 1);
 assert_commit_is_head(new_commit);

 git_commit_free(old_commit);

 old_commit = new_commit;



 cl_git_mkfile("treebuilder/anotherfile", "This is another file\n");
 cl_git_pass(git_index_add_bypath(index, "anotherfile"));
 cl_git_pass(git_index_write_tree(&tree_oid, index));
 cl_git_pass(git_tree_lookup(&tree, repo, &tree_oid));
 cl_assert_equal_i(2, git_tree_entrycount(tree));


 cl_git_fail_with(GIT_ENOTFOUND, git_commit_amend(
  &new_oid, old_commit, "refs/heads/nope", ((void*)0), ((void*)0), ((void*)0), "Initial commit", tree));

 cl_git_pass(git_commit_amend(
  &new_oid, old_commit, "HEAD", ((void*)0), ((void*)0), ((void*)0), "Initial commit", tree));
 git_tree_free(tree);

 cl_git_pass(git_commit_lookup(&new_commit, repo, &new_oid));

 cl_assert_equal_i(0, git_commit_parentcount(new_commit));
 assert_commit_tree_has_n_entries(new_commit, 2);
 assert_commit_is_head(new_commit);



 git_commit_free(old_commit);
 git_commit_free(new_commit);
 git_index_free(index);
}
