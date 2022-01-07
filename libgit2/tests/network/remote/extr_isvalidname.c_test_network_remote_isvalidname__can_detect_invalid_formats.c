
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int git_remote_is_valid_name (char*) ;

void test_network_remote_isvalidname__can_detect_invalid_formats(void)
{
 cl_assert_equal_i(0, git_remote_is_valid_name("/"));
 cl_assert_equal_i(0, git_remote_is_valid_name("//"));
 cl_assert_equal_i(0, git_remote_is_valid_name(".lock"));
 cl_assert_equal_i(0, git_remote_is_valid_name("a.lock"));
 cl_assert_equal_i(0, git_remote_is_valid_name("/no/leading/slash"));
 cl_assert_equal_i(0, git_remote_is_valid_name("no/trailing/slash/"));
}
