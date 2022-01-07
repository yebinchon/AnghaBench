
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_CHERRYPICK_HEAD_FILE ;
 int GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE ;
 int GIT_REPOSITORY_STATE_NONE ;
 int GIT_SEQUENCER_TODO_FILE ;
 int _repo ;
 int assert_repo_state (int ) ;
 int cl_git_pass (int ) ;
 int git_repository_state_cleanup (int ) ;
 int setup_simple_state (int ) ;

void test_repo_state__cherrypick_sequence(void)
{
 setup_simple_state(GIT_CHERRYPICK_HEAD_FILE);
 setup_simple_state(GIT_SEQUENCER_TODO_FILE);
 assert_repo_state(GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE);
 cl_git_pass(git_repository_state_cleanup(_repo));
 assert_repo_state(GIT_REPOSITORY_STATE_NONE);
}
