
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int (* handle_irq ) (struct pt_regs*) ;} ;


 int NMI_DONE ;
 int active_events ;
 int atomic_read (int *) ;
 int perf_sample_event_took (scalar_t__) ;
 scalar_t__ sched_clock () ;
 int stub1 (struct pt_regs*) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int
perf_event_nmi_handler(unsigned int cmd, struct pt_regs *regs)
{
 u64 start_clock;
 u64 finish_clock;
 int ret;





 if (!atomic_read(&active_events))
  return NMI_DONE;

 start_clock = sched_clock();
 ret = x86_pmu.handle_irq(regs);
 finish_clock = sched_clock();

 perf_sample_event_took(finish_clock - start_clock);

 return ret;
}
