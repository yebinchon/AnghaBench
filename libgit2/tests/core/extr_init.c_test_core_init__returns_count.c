
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int git_libgit2_init () ;
 int git_libgit2_shutdown () ;

void test_core_init__returns_count(void)
{



 cl_assert_equal_i(2, git_libgit2_init());
 cl_assert_equal_i(3, git_libgit2_init());

 cl_assert_equal_i(2, git_libgit2_shutdown());
 cl_assert_equal_i(1, git_libgit2_shutdown());
}
