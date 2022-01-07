
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;


 int GIT_STATUS_INDEX_MODIFIED ;
 int GIT_STATUS_INDEX_NEW ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int ,int ,int ,char*) ;
 int git_index_add_bypath (int ,char*) ;
 int git_index_conflict_get (int const**,int const**,int const**,int ,char*) ;
 int git_index_has_conflicts (int ) ;
 int git_stash_apply (int ,int ,int *) ;
 int repo ;
 int repo_index ;
 int signature ;

void test_stash_apply__merges_new_file(void)
{
 const git_index_entry *ancestor, *our, *their;

 cl_git_mkfile("stash/where", "committed before stash\n");
 cl_git_pass(git_index_add_bypath(repo_index, "where"));
 cl_repo_commit_from_index(((void*)0), repo, signature, 0, "Other commit");

 cl_git_pass(git_stash_apply(repo, 0, ((void*)0)));

 cl_assert_equal_i(1, git_index_has_conflicts(repo_index));
 assert_status(repo, "what", GIT_STATUS_INDEX_MODIFIED);
 cl_git_pass(git_index_conflict_get(&ancestor, &our, &their, repo_index, "where"));
 assert_status(repo, "who", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "why", GIT_STATUS_INDEX_NEW);
}
