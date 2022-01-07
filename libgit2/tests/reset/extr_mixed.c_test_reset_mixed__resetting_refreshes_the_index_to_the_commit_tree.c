
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RESET_MIXED ;
 unsigned int GIT_STATUS_CURRENT ;
 unsigned int GIT_STATUS_WT_NEW ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_reset (int ,int ,int ,int *) ;
 int git_revparse_single (int *,int ,char*) ;
 int git_status_file (unsigned int*,int ,char*) ;
 int repo ;
 int target ;

void test_reset_mixed__resetting_refreshes_the_index_to_the_commit_tree(void)
{
 unsigned int status;

 cl_git_pass(git_status_file(&status, repo, "macro_bad"));
 cl_assert(status == GIT_STATUS_CURRENT);
 cl_git_pass(git_revparse_single(&target, repo, "605812a"));

 cl_git_pass(git_reset(repo, target, GIT_RESET_MIXED, ((void*)0)));

 cl_git_pass(git_status_file(&status, repo, "macro_bad"));
 cl_assert(status == GIT_STATUS_WT_NEW);
}
