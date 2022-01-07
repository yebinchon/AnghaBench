
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_add ;
 int test_subtract ;

void test_ranges(void)
{
    subtest("add", test_add);
    subtest("subtract", test_subtract);
}
