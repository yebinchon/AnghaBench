
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int timers_should_not_run () ;
 int timers_should_not_run_before_expiry () ;
 int timers_should_run () ;
 int wake_time_before_expiry () ;

int main(void)
{
    wake_time_before_expiry();
    timers_should_run();
    timers_should_not_run();
    timers_should_not_run_before_expiry();
    return 0;
}
