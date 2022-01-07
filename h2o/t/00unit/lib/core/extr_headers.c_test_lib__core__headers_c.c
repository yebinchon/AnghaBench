
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_set_header_token ;

void test_lib__core__headers_c(void)
{
    subtest("set_header_token", test_set_header_token);
}
