
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_must_fail (int ) ;
 int errno ;
 int p_readlink (char*,char*,int) ;

void test_core_link__readlink_normal_file(void)
{
 char buf[2048];

 cl_git_rewritefile("readlink_regfile", "This is a regular file!\n");
 cl_must_fail(p_readlink("readlink_regfile", buf, 2048));
 cl_assert_equal_i(EINVAL, errno);
}
