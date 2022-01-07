
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int message; int klass; } ;


 int GIT_ADD_SIZET_OVERFLOW (size_t*,int,int) ;
 int GIT_ERROR_NOMEMORY ;
 int SIZE_MAX ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_p (int *,TYPE_1__*) ;
 int cl_assert_equal_s (char*,int ) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;

void test_core_errors__integer_overflow_sets_oom(void)
{
 size_t out;

 git_error_clear();
 cl_assert(!GIT_ADD_SIZET_OVERFLOW(&out, SIZE_MAX-1, 1));
 cl_assert_equal_p(((void*)0), git_error_last());

 git_error_clear();
 cl_assert(!GIT_ADD_SIZET_OVERFLOW(&out, 42, 69));
 cl_assert_equal_p(((void*)0), git_error_last());

 git_error_clear();
 cl_assert(GIT_ADD_SIZET_OVERFLOW(&out, SIZE_MAX, SIZE_MAX));
 cl_assert_equal_i(GIT_ERROR_NOMEMORY, git_error_last()->klass);
 cl_assert_equal_s("Out of memory", git_error_last()->message);

 git_error_clear();
 cl_assert(GIT_ADD_SIZET_OVERFLOW(&out, SIZE_MAX, SIZE_MAX));
 cl_assert_equal_i(GIT_ERROR_NOMEMORY, git_error_last()->klass);
 cl_assert_equal_s("Out of memory", git_error_last()->message);
}
