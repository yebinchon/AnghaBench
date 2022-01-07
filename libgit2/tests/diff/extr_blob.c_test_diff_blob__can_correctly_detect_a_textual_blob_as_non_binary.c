
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int d ;
 int git_blob_is_binary (int ) ;

void test_diff_blob__can_correctly_detect_a_textual_blob_as_non_binary(void)
{

 cl_assert_equal_i(0, git_blob_is_binary(d));
}
