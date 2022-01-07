
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int _repo ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_remote_delete (int ,char*) ;

void test_network_remote_delete__remove_remote_tracking_branches(void)
{
 git_reference *ref;

 cl_git_pass(git_remote_delete(_repo, "test"));
 cl_git_fail_with(GIT_ENOTFOUND, git_reference_lookup(&ref, _repo, "refs/remotes/test/master"));
}
