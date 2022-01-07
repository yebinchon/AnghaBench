
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_least_conn ;
 int test_least_conn_weighted ;
 int test_when_backend_down ;

void test_lib__common__balancer__least_conn_c(void)
{
    subtest("when_backend_down", test_when_backend_down);
    subtest("least_conn", test_least_conn);
    subtest("least_conn_weighted", test_least_conn_weighted);
}
