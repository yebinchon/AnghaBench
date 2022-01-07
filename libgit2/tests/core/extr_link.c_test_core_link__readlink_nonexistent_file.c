
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_must_fail (int ) ;
 int errno ;
 int p_readlink (char*,char*,int) ;

void test_core_link__readlink_nonexistent_file(void)
{
 char buf[2048];

 cl_must_fail(p_readlink("readlink_nonexistent", buf, 2048));
 cl_assert_equal_i(ENOENT, errno);
}
