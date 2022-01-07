
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;

void test_core_futils__cleanup(void)
{
 cl_fixture_cleanup("futils");
}
