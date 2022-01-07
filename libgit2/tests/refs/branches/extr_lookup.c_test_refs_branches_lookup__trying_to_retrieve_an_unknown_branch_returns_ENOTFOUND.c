
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_BRANCH_ALL ;
 int GIT_BRANCH_LOCAL ;
 int GIT_BRANCH_REMOTE ;
 int GIT_ENOTFOUND ;
 int branch ;
 int cl_assert_equal_i (int ,int ) ;
 int git_branch_lookup (int *,int ,char*,int ) ;
 int repo ;

void test_refs_branches_lookup__trying_to_retrieve_an_unknown_branch_returns_ENOTFOUND(void)
{
 cl_assert_equal_i(GIT_ENOTFOUND, git_branch_lookup(&branch, repo, "where/are/you", GIT_BRANCH_LOCAL));
 cl_assert_equal_i(GIT_ENOTFOUND, git_branch_lookup(&branch, repo, "over/here", GIT_BRANCH_REMOTE));
 cl_assert_equal_i(GIT_ENOTFOUND, git_branch_lookup(&branch, repo, "maybe/here", GIT_BRANCH_ALL));
}
