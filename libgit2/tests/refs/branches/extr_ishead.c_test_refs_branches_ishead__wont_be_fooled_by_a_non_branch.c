
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int branch ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_is_head (int ) ;
 int git_reference_lookup (int *,int ,char*) ;
 int repo ;

void test_refs_branches_ishead__wont_be_fooled_by_a_non_branch(void)
{
 cl_git_pass(git_reference_lookup(&branch, repo, "refs/tags/e90810b"));

 cl_assert_equal_i(0, git_branch_is_head(branch));
}
