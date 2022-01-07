
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_fail_with (int ,int) ;
 int git_reference_foreach (int ,int ,int*) ;
 int refs_foreach_cancel_cb ;
 int repo ;

void test_refs_iterator__foreach_can_cancel(void)
{
 int cancel_after = 3;
 cl_git_fail_with(
  git_reference_foreach(repo, refs_foreach_cancel_cb, &cancel_after),
  -333);
 cl_assert_equal_i(0, cancel_after);
}
