
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_SORT_TIME ;
 int _walk ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_revwalk_hide (int ,int *) ;
 scalar_t__ git_revwalk_next (int *,int ) ;
 int git_revwalk_push (int ,int *) ;
 int git_revwalk_sorting (int ,int ) ;
 int revwalk_basic_setup_walk (int *) ;

void test_revwalk_basic__from_new_to_old(void)
{
 git_oid from_oid, to_oid, oid;
 int i = 0;

 revwalk_basic_setup_walk(((void*)0));
 git_revwalk_sorting(_walk, GIT_SORT_TIME);

 cl_git_pass(git_oid_fromstr(&to_oid, "5b5b025afb0b4c913b4c338a42934a3863bf3644"));
 cl_git_pass(git_oid_fromstr(&from_oid, "a4a7dce85cf63874e984719f4fdd239f5145052f"));

 cl_git_pass(git_revwalk_push(_walk, &to_oid));
 cl_git_pass(git_revwalk_hide(_walk, &from_oid));

 while (git_revwalk_next(&oid, _walk) == 0)
  i++;

 cl_assert_equal_i(i, 0);
}
