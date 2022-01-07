
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_thread ;


 int cl_assert_equal_sz (int,size_t) ;
 int cl_git_pass (int ) ;
 int clar__skip () ;
 int git_thread_create (int *,int ,void*) ;
 int git_thread_join (int *,void**) ;
 int return_normally ;

void test_threads_basic__exit(void)
{

 clar__skip();
}
