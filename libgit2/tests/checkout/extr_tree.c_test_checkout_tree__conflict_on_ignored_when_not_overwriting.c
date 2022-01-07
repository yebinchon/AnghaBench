
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_CHECKOUT_DONT_OVERWRITE_IGNORED ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_ECONFLICT ;
 int checkout_tree_with_blob_ignored_in_workdir (int,int) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_fail (int) ;

void test_checkout_tree__conflict_on_ignored_when_not_overwriting(void)
{
 int error;

 cl_git_fail(error = checkout_tree_with_blob_ignored_in_workdir(
  GIT_CHECKOUT_SAFE | GIT_CHECKOUT_DONT_OVERWRITE_IGNORED, 0));

 cl_assert_equal_i(GIT_ECONFLICT, error);
}
