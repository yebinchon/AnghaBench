
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_round_robin ;
 int test_round_robin_weighted ;
 int test_when_backend_down ;

void test_lib__common__balancer__roundrobin_c(void)
{
    subtest("when_backend_down", test_when_backend_down);
    subtest("round_robin", test_round_robin);
    subtest("round_robin_weighted", test_round_robin_weighted);
}
