
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_BISECT_LOG_FILE ;
 int GIT_REPOSITORY_STATE_BISECT ;
 int GIT_REPOSITORY_STATE_NONE ;
 int _repo ;
 int assert_repo_state (int ) ;
 int cl_git_pass (int ) ;
 int git_repository_state_cleanup (int ) ;
 int setup_simple_state (int ) ;

void test_repo_state__bisect(void)
{
 setup_simple_state(GIT_BISECT_LOG_FILE);
 assert_repo_state(GIT_REPOSITORY_STATE_BISECT);
 cl_git_pass(git_repository_state_cleanup(_repo));
 assert_repo_state(GIT_REPOSITORY_STATE_NONE);
}
