
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_t ;


 int sched_yield () ;

int_t sys_sched_yield() {
    sched_yield();
    return 0;
}
