
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_thread ;


 unsigned int ARRAY_SIZE (int *) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_sandbox_set_search_path_defaults () ;
 int cl_skip () ;
 int git_libgit2_init () ;
 int git_libgit2_shutdown () ;
 int git_thread_create (int *,int ,int *) ;
 int git_thread_join (int *,int *) ;
 int reinit ;

void test_core_init__concurrent_init_succeeds(void)
{
 cl_skip();

}
