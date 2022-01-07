
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_upstream_name (int *,int ,char*) ;
 int git_buf_cstr (int *) ;
 int repo ;
 int upstream_name ;

void test_refs_branches_upstreamname__can_retrieve_the_local_upstream_reference_name_of_a_local_branch(void)
{
 cl_git_pass(git_branch_upstream_name(
  &upstream_name, repo, "refs/heads/track-local"));

 cl_assert_equal_s("refs/heads/master", git_buf_cstr(&upstream_name));
}
