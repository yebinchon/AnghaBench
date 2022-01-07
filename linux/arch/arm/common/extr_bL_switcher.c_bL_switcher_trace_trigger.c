
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bL_switcher_trace_trigger_cpu (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (int (*) (int *),int *,int) ;

int bL_switcher_trace_trigger(void)
{
 preempt_disable();

 bL_switcher_trace_trigger_cpu(((void*)0));
 smp_call_function(bL_switcher_trace_trigger_cpu, ((void*)0), 1);

 preempt_enable();

 return 0;
}
