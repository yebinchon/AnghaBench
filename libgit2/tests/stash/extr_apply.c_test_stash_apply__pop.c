
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_stash_pop (int ,int ,int *) ;
 int repo ;

void test_stash_apply__pop(void)
{
 cl_git_pass(git_stash_pop(repo, 0, ((void*)0)));

 cl_git_fail_with(git_stash_pop(repo, 0, ((void*)0)), GIT_ENOTFOUND);
}
