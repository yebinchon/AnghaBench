
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int git_stash_drop (int ,int ) ;
 int repo ;

void test_stash_drop__cannot_drop_from_an_empty_stash(void)
{
 cl_git_fail_with(git_stash_drop(repo, 0), GIT_ENOTFOUND);
}
