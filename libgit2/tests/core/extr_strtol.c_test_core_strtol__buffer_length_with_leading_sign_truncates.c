
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int cl_assert_equal_i (int ,int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git__strntol64 (int *,char*,int,int *,int) ;

void test_core_strtol__buffer_length_with_leading_sign_truncates(void)
{
 int64_t i64;

 cl_git_fail(git__strntol64(&i64, "-1", 1, ((void*)0), 10));

 cl_git_pass(git__strntol64(&i64, "-11", 2, ((void*)0), 10));
 cl_assert_equal_i(i64, -1);
}
