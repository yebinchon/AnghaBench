
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_change_weight ;
 int test_dependency ;
 int test_exclusive ;
 int test_exclusive_at_current_pos ;
 int test_firefox ;
 int test_priority ;
 int test_queue ;
 int test_reprioritize ;
 int test_reprioritize_exclusive ;
 int test_round_robin ;

void test_lib__http2__scheduler(void)
{
    subtest("drr", test_queue);
    subtest("round-robin", test_round_robin);
    subtest("priority", test_priority);
    subtest("dependency", test_dependency);
    subtest("exclusive", test_exclusive);
    subtest("firefox", test_firefox);
    test_reprioritize_exclusive = 0;
    subtest("repriortize-nonexclusive", test_reprioritize);
    test_reprioritize_exclusive = 1;
    subtest("repriortize-exclusive", test_reprioritize);
    subtest("change-weight", test_change_weight);
    subtest("exclusive-at-current-pos", test_exclusive_at_current_pos);
}
