
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NON_EXISTING_HEAD ;
 int branch ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_is_head (int ) ;
 int git_reference_lookup (int *,int ,char*) ;
 int make_head_unborn (int ,int ) ;
 int repo ;

void test_refs_branches_ishead__can_properly_handle_unborn_HEAD(void)
{
 make_head_unborn(repo, NON_EXISTING_HEAD);

 cl_git_pass(git_reference_lookup(&branch, repo, "refs/heads/master"));

 cl_assert_equal_i(0, git_branch_is_head(branch));
}
