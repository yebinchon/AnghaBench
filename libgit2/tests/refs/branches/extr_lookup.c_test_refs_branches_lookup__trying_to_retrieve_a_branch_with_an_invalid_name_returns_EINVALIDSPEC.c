
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_BRANCH_ALL ;
 int GIT_BRANCH_LOCAL ;
 int GIT_BRANCH_REMOTE ;
 int GIT_EINVALIDSPEC ;
 int branch ;
 int cl_assert_equal_i (int ,int ) ;
 int git_branch_lookup (int *,int ,char*,int ) ;
 int repo ;

void test_refs_branches_lookup__trying_to_retrieve_a_branch_with_an_invalid_name_returns_EINVALIDSPEC(void)
{
 cl_assert_equal_i(GIT_EINVALIDSPEC,
  git_branch_lookup(&branch, repo, "are/you/inv@{id", GIT_BRANCH_LOCAL));
 cl_assert_equal_i(GIT_EINVALIDSPEC,
  git_branch_lookup(&branch, repo, "yes/i am", GIT_BRANCH_REMOTE));
 cl_assert_equal_i(GIT_EINVALIDSPEC,
  git_branch_lookup(&branch, repo, "inv al/id", GIT_BRANCH_ALL));
}
