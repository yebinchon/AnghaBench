
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _walk ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_revwalk_hide_ref (int ,char*) ;
 scalar_t__ git_revwalk_next (int *,int ) ;
 int git_revwalk_push_head (int ) ;
 int revwalk_basic_setup_walk (int *) ;

void test_revwalk_basic__push_head_hide_ref(void)
{
 int i = 0;
 git_oid oid;

 revwalk_basic_setup_walk(((void*)0));

 cl_git_pass(git_revwalk_push_head(_walk));
 cl_git_pass(git_revwalk_hide_ref(_walk, "refs/heads/packed-test"));

 while (git_revwalk_next(&oid, _walk) == 0) {
  i++;
 }


 cl_assert_equal_i(i, 4);
}
