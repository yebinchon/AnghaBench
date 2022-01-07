
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_add_fixed_timers ;
 int test_add_rand_timers ;
 int test_del_timers ;
 int test_exhaustive ;
 int test_get_wake_at ;
 int test_invalid_timer ;
 int test_multiple_cascade_in_sparse_wheels ;
 int test_overflow ;
 int test_slot_calc ;

void test_lib__common__timerwheel_c()
{
    subtest("slot calculation", test_slot_calc);
    subtest("add fixed timers", test_add_fixed_timers);
    subtest("add random timers", test_add_rand_timers);
    subtest("del fixed timers", test_del_timers);
    subtest("test out-of-range timer", test_invalid_timer);
    subtest("exhaustive", test_exhaustive);
    subtest("overflow", test_overflow);
    subtest("get_wake_at", test_get_wake_at);
    subtest("multiple_cascade_in_sparse_wheels", test_multiple_cascade_in_sparse_wheels);
}
