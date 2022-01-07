
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int git_stash_drop (int ,int) ;
 int push_three_states () ;
 int repo ;

void test_stash_drop__cannot_drop_a_non_existing_stashed_state(void)
{
 push_three_states();

 cl_git_fail_with(git_stash_drop(repo, 666), GIT_ENOTFOUND);
 cl_git_fail_with(git_stash_drop(repo, 42), GIT_ENOTFOUND);
 cl_git_fail_with(git_stash_drop(repo, 3), GIT_ENOTFOUND);
}
