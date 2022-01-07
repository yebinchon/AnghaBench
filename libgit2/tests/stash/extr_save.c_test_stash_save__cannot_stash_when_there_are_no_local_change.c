
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_index ;


 int GIT_ENOTFOUND ;
 int GIT_STASH_DEFAULT ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int ,int ,int ,char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int p_unlink (char*) ;
 int repo ;
 int signature ;

void test_stash_save__cannot_stash_when_there_are_no_local_change(void)
{
 git_index *index;
 git_oid stash_tip_oid;

 cl_git_pass(git_repository_index(&index, repo));





 cl_git_pass(git_index_add_bypath(index, "what"));
 cl_git_pass(git_index_add_bypath(index, "where"));
 cl_git_pass(git_index_add_bypath(index, "who"));

 cl_repo_commit_from_index(((void*)0), repo, signature, 0, "Initial commit");
 git_index_free(index);

 cl_assert_equal_i(GIT_ENOTFOUND,
  git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));

 p_unlink("stash/when");
 cl_assert_equal_i(GIT_ENOTFOUND,
  git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED));
}
