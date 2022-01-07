
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_aton ;

void test_lib__common__hostinfo_c(void)
{

    subtest("aton", test_aton);
}
