
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_do_softirq (int ) ;
 size_t smp_processor_id () ;
 int * softirq_ctx ;

void do_softirq_own_stack(void)
{
 call_do_softirq(softirq_ctx[smp_processor_id()]);
}
