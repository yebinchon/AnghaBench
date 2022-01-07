
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_BRANCH_REMOTE ;
 int branch ;
 int cl_git_fail (int ) ;
 int git_branch_lookup (int *,int ,char*,int ) ;
 int repo ;

void test_refs_branches_lookup__trying_to_retrieve_a_local_branch_remote(void)
{
 cl_git_fail(git_branch_lookup(&branch, repo, "br2", GIT_BRANCH_REMOTE));
}
