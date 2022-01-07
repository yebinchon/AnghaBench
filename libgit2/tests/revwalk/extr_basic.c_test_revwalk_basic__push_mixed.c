
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _walk ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_revwalk_next (int *,int ) ;
 int git_revwalk_push_glob (int ,char*) ;
 int git_revwalk_reset (int ) ;
 int git_revwalk_sorting (int ,int ) ;
 int revwalk_basic_setup_walk (int *) ;

void test_revwalk_basic__push_mixed(void)
{
 git_oid oid;
 int i = 0;

 revwalk_basic_setup_walk(((void*)0));

 git_revwalk_reset(_walk);
 git_revwalk_sorting(_walk, 0);
 cl_git_pass(git_revwalk_push_glob(_walk, "tags"));

 while (git_revwalk_next(&oid, _walk) == 0) {
  i++;
 }


 cl_assert_equal_i(9, i);
}
