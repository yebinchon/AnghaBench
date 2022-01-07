
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CANCEL_VALUE ;
 int cancel_iteration ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int count_attrs ;
 int g_repo ;
 int git_attr_foreach (int ,int ,char*,int *,int*) ;

void test_attr_repo__foreach(void)
{
 int count;

 count = 0;
 cl_git_pass(git_attr_foreach(
  g_repo, 0, "root_test1", &count_attrs, &count));
 cl_assert(count == 2);

 count = 0;
 cl_git_pass(git_attr_foreach(g_repo, 0, "sub/subdir_test1",
  &count_attrs, &count));
 cl_assert(count == 4);

 count = 0;
 cl_git_pass(git_attr_foreach(g_repo, 0, "sub/subdir_test2.txt",
  &count_attrs, &count));
 cl_assert(count == 6);

 count = 2;
 cl_assert_equal_i(
  CANCEL_VALUE, git_attr_foreach(
   g_repo, 0, "sub/subdir_test1", &cancel_iteration, &count)
 );
}
