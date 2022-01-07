
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_gzip_multi ;
 int test_gzip_simple ;

void test_lib__handler__gzip_c()
{
    subtest("gzip_simple", test_gzip_simple);
    subtest("gzip_multi", test_gzip_multi);
}
