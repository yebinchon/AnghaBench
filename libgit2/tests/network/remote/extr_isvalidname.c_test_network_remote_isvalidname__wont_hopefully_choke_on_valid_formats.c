
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int git_remote_is_valid_name (char*) ;

void test_network_remote_isvalidname__wont_hopefully_choke_on_valid_formats(void)
{
 cl_assert_equal_i(1, git_remote_is_valid_name("webmatrix"));
 cl_assert_equal_i(1, git_remote_is_valid_name("yishaigalatzer/rules"));
}
