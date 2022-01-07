
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __do_restart ;
 int debug_locks_off () ;
 int lgr_info_log () ;
 int smp_call_online_cpu (int ,int *) ;
 int tracing_off () ;

void do_restart(void)
{
 tracing_off();
 debug_locks_off();
 lgr_info_log();
 smp_call_online_cpu(__do_restart, ((void*)0));
}
