
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_rewrite_location ;

void test_lib__core__proxy_c()
{
    subtest("rewrite_location", test_rewrite_location);
}
