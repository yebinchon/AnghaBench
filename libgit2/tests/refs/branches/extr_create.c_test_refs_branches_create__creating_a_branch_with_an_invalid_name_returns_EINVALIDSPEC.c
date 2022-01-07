
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int branch ;
 int cl_assert_equal_i (int ,int ) ;
 int git_branch_create (int *,int ,char*,int ,int ) ;
 int repo ;
 int retrieve_known_commit (int *,int ) ;
 int target ;

void test_refs_branches_create__creating_a_branch_with_an_invalid_name_returns_EINVALIDSPEC(void)
{
 retrieve_known_commit(&target, repo);

 cl_assert_equal_i(GIT_EINVALIDSPEC,
  git_branch_create(&branch, repo, "inv@{id", target, 0));
}
