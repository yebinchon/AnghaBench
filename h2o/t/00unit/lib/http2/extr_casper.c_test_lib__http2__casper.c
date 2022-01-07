
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_calc_key ;
 int test_cookie ;
 int test_cookie_merge ;
 int test_lookup ;

void test_lib__http2__casper(void)
{
    subtest("calc_key", test_calc_key);
    subtest("test_lookup", test_lookup);
    subtest("cookie", test_cookie);
    subtest("cookie-merge", test_cookie_merge);
}
