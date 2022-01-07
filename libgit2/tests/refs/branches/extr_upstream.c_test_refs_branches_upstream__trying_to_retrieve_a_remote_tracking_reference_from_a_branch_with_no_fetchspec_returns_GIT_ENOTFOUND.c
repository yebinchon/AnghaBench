
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int branch ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_upstream (int *,int ) ;
 int git_reference_lookup (int *,int ,char*) ;
 int repo ;
 int upstream ;

void test_refs_branches_upstream__trying_to_retrieve_a_remote_tracking_reference_from_a_branch_with_no_fetchspec_returns_GIT_ENOTFOUND(void)
{
 cl_git_pass(git_reference_lookup(&branch, repo, "refs/heads/cannot-fetch"));

 cl_assert_equal_i(GIT_ENOTFOUND, git_branch_upstream(&upstream, branch));
}
