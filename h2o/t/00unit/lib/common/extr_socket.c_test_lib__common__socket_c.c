
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_on_alpn_select ;
 int test_prepare_for_latency_optimization ;
 int test_sliding_counter ;

void test_lib__common__socket_c(void)
{
    subtest("on_alpn_select", test_on_alpn_select);
    subtest("sliding_counter", test_sliding_counter);
    subtest("prepare_for_latency_optimization", test_prepare_for_latency_optimization);
}
