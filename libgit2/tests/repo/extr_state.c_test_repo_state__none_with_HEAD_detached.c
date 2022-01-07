
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REPOSITORY_STATE_NONE ;
 int _repo ;
 int assert_repo_state (int ) ;
 int cl_git_pass (int ) ;
 int git_repository_detach_head (int ) ;

void test_repo_state__none_with_HEAD_detached(void)
{
 cl_git_pass(git_repository_detach_head(_repo));
 assert_repo_state(GIT_REPOSITORY_STATE_NONE);
}
