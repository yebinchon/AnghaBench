
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ECONFLICT ;
 int GIT_ENOTFOUND ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_WT_MODIFIED ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int git_index_has_conflicts (int ) ;
 int git_stash_apply (int ,int ,int *) ;
 int repo ;
 int repo_index ;

void test_stash_apply__conflict_workdir_with_default(void)
{
 cl_git_rewritefile("stash/what", "ciao\n");

 cl_git_fail_with(git_stash_apply(repo, 0, ((void*)0)), GIT_ECONFLICT);

 cl_assert_equal_i(git_index_has_conflicts(repo_index), 0);
 assert_status(repo, "what", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_CURRENT);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "why", GIT_ENOTFOUND);
}
