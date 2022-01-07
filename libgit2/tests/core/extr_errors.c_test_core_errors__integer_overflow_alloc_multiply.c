
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int message; int klass; } ;


 int GIT_ERROR_NOMEMORY ;
 int SIZE_MAX ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__* git_error_last () ;
 int test_arraysize_multiply (int,int) ;

void test_core_errors__integer_overflow_alloc_multiply(void)
{
 cl_git_pass(test_arraysize_multiply(10, 10));
 cl_git_pass(test_arraysize_multiply(1000, 1000));
 cl_git_pass(test_arraysize_multiply(SIZE_MAX/sizeof(void *), sizeof(void *)));
 cl_git_pass(test_arraysize_multiply(0, 10));
 cl_git_pass(test_arraysize_multiply(10, 0));

 cl_git_fail(test_arraysize_multiply(SIZE_MAX-1, sizeof(void *)));
 cl_git_fail(test_arraysize_multiply((SIZE_MAX/sizeof(void *))+1, sizeof(void *)));

 cl_assert_equal_i(GIT_ERROR_NOMEMORY, git_error_last()->klass);
 cl_assert_equal_s("Out of memory", git_error_last()->message);
}
