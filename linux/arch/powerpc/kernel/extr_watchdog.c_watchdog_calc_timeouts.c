
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ppc_tb_freq ;
 int watchdog_thresh ;
 int wd_panic_timeout_tb ;
 int wd_smp_panic_timeout_tb ;
 int wd_timer_period_ms ;

__attribute__((used)) static void watchdog_calc_timeouts(void)
{
 wd_panic_timeout_tb = watchdog_thresh * ppc_tb_freq;


 wd_smp_panic_timeout_tb = wd_panic_timeout_tb * 3 / 2;


 wd_timer_period_ms = watchdog_thresh * 1000 * 2 / 5;
}
