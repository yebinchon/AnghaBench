
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int count_cb ;
 int git_reference_foreach_glob (int ,char const*,int ,int*) ;
 int repo ;

__attribute__((used)) static void assert_retrieval(const char *glob, int expected_count)
{
 int count = 0;

 cl_git_pass(git_reference_foreach_glob(repo, glob, count_cb, &count));

 cl_assert_equal_i(expected_count, count);
}
