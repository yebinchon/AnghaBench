
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_basic ;
 int test_dynamic ;

void test_lib__handler__mimemap_c()
{
    subtest("basic", test_basic);
    subtest("dynamic", test_dynamic);
}
