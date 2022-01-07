
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int cl_sandbox_set_search_path_defaults () ;
 int git_libgit2_init () ;
 int git_libgit2_shutdown () ;

void test_core_init__reinit_succeeds(void)
{
 cl_assert_equal_i(0, git_libgit2_shutdown());
 cl_assert_equal_i(1, git_libgit2_init());
 cl_sandbox_set_search_path_defaults();
}
