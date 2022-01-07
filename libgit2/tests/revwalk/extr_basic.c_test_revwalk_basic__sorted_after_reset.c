
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_SORT_TIME ;
 int _walk ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int commit_count ;
 int commit_head ;
 int commit_sorting_time ;
 int git_oid_fromstr (int *,int ) ;
 scalar_t__ git_revwalk_next (int *,int ) ;
 int git_revwalk_push (int ,int *) ;
 int git_revwalk_reset (int ) ;
 int git_revwalk_sorting (int ,int ) ;
 int revwalk_basic_setup_walk (int *) ;
 int test_walk_only (int ,int ,int) ;

void test_revwalk_basic__sorted_after_reset(void)
{
 int i = 0;
 git_oid oid;

 revwalk_basic_setup_walk(((void*)0));

 git_oid_fromstr(&oid, commit_head);


 cl_git_pass(git_revwalk_push(_walk, &oid));
 git_revwalk_sorting(_walk, GIT_SORT_TIME);

 cl_git_pass(test_walk_only(_walk, commit_sorting_time, 2));


 git_revwalk_reset(_walk);
 cl_git_pass(git_revwalk_push(_walk, &oid));

 while (git_revwalk_next(&oid, _walk) == 0)
  i++;

 cl_assert_equal_i(i, commit_count);
}
