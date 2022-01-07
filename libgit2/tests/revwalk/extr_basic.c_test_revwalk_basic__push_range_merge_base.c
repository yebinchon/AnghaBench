
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int _walk ;
 int cl_git_fail_with (int ,int ) ;
 int git_revwalk_push_range (int ,char*) ;
 int git_revwalk_reset (int ) ;
 int git_revwalk_sorting (int ,int ) ;
 int revwalk_basic_setup_walk (int *) ;

void test_revwalk_basic__push_range_merge_base(void)
{
 revwalk_basic_setup_walk(((void*)0));

 git_revwalk_reset(_walk);
 git_revwalk_sorting(_walk, 0);
 cl_git_fail_with(GIT_EINVALIDSPEC, git_revwalk_push_range(_walk, "HEAD...HEAD~2"));
}
