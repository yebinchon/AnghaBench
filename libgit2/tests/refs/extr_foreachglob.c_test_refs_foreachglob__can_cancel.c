
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int) ;
 int git_reference_foreach_glob (int ,char*,int ,int*) ;
 int interrupt_cb ;
 int repo ;

void test_refs_foreachglob__can_cancel(void)
{
 int count = 0;

 cl_assert_equal_i(-1000, git_reference_foreach_glob(
  repo, "*", interrupt_cb, &count) );

 cl_assert_equal_i(11, count);
}
