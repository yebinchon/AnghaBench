
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_stash_drop (int ,int) ;
 int push_three_states () ;
 int repo ;

void test_stash_drop__can_purge_the_stash_from_the_bottom(void)
{
 push_three_states();

 cl_git_pass(git_stash_drop(repo, 2));
 cl_git_pass(git_stash_drop(repo, 1));
 cl_git_pass(git_stash_drop(repo, 0));

 cl_git_fail_with(git_stash_drop(repo, 0), GIT_ENOTFOUND);
}
