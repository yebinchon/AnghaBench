
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;


 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git__strntol32 (int *,char*,int,int *,int) ;
 int git__strntol64 (int *,char*,int,int *,int) ;

void test_core_strtol__buffer_length_truncates(void)
{
 int32_t i32;
 int64_t i64;

 cl_git_pass(git__strntol32(&i32, "11", 1, ((void*)0), 10));
 cl_assert_equal_i(i32, 1);

 cl_git_pass(git__strntol64(&i64, "11", 1, ((void*)0), 10));
 cl_assert_equal_i(i64, 1);
}
