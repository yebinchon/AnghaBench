
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_should_use_h2 ;

void test_lib__common__httpclient_c(void)
{
    subtest("should_use_h2", test_should_use_h2);
}
