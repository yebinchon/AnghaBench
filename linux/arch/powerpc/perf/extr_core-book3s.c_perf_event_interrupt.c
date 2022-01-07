
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pt_regs {int dummy; } ;


 int __perf_event_interrupt (struct pt_regs*) ;
 int perf_sample_event_took (scalar_t__) ;
 scalar_t__ sched_clock () ;

__attribute__((used)) static void perf_event_interrupt(struct pt_regs *regs)
{
 u64 start_clock = sched_clock();

 __perf_event_interrupt(regs);
 perf_sample_event_took(sched_clock() - start_clock);
}
