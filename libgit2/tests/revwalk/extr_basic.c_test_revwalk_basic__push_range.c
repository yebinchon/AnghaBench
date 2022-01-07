
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _walk ;
 int cl_git_pass (int ) ;
 int commit_sorting_segment ;
 int git_revwalk_push_range (int ,char*) ;
 int git_revwalk_reset (int ) ;
 int git_revwalk_sorting (int ,int ) ;
 int revwalk_basic_setup_walk (int *) ;
 int test_walk_only (int ,int ,int) ;

void test_revwalk_basic__push_range(void)
{
 revwalk_basic_setup_walk(((void*)0));

 git_revwalk_reset(_walk);
 git_revwalk_sorting(_walk, 0);
 cl_git_pass(git_revwalk_push_range(_walk, "9fd738e~2..9fd738e"));
 cl_git_pass(test_walk_only(_walk, commit_sorting_segment, 2));
}
