
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git__strntol64 (int *,char*,int,int *,int ) ;

void test_core_strtol__buffer_length_with_autodetection_truncates(void)
{
 int64_t i64;

 cl_git_pass(git__strntol64(&i64, "011", 2, ((void*)0), 0));
 cl_assert_equal_i(i64, 1);
 cl_git_pass(git__strntol64(&i64, "0x11", 3, ((void*)0), 0));
 cl_assert_equal_i(i64, 1);
}
