
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alien ;
 int cl_assert_equal_i (int,int ) ;
 int git_blob_is_binary (int ) ;

void test_diff_blob__can_correctly_detect_a_binary_blob_as_binary(void)
{

 cl_assert_equal_i(1, git_blob_is_binary(alien));
}
